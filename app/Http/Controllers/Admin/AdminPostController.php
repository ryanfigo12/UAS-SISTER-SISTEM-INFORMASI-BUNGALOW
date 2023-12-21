<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Post;



class AdminPostController extends Controller
{
    /**
     * @OA\Get(
     *     path="/get-post",
     *     tags={"Post"},
     *     summary="Mendapatkan Post",
     *     description="Return Post",
     *     operationId="get-post",
     *       @OA\Response(
     *           response="200",
     *           description="Ok",
     *           @OA\JsonContent
     *           (example={
     *               "meta": {
     *                     "code":200,
     *                     "status": "success",
     *                     "message": "Post data Retrieved successfully!"
     *                },
     *               "data": {
     *                         {
     *                              "photo": "bungalow.jpg",
     *                              "heading": "The best bungalow",
     *                              "short_content": "Bungalow yang berada pada singaraja lovina",
     *                              "content": "Seabreeze bungalow ini terletak di jalan pantai binaria lovina yang memiliki 2 tipe kamar",
     *                              "total_view": "5",
     *                              "created_at": "2022-06-26 09:27:07",
     *                              "Updated_at": "2022-06-26 13:31:19",
     *                              "id":1
     *                              
     *                         },
     *                         
     *                }
     *          }),
     *      ),
     *      @OA\Response(
     *          response=400,
     *          description="Bad Request"
     *      ),
     *      @OA\Response(
     *          response=403,
     *          description="Forbidden"
     *      )
     * )
     */
    public function index()
    {
        $posts = Post::get();
        return view('admin.post_view', compact('posts'));
    }

    public function add()
    {
        return view('admin.post_add');
    }

/**
 * @OA\Post(
 *     path="/post",
 *     tags={"Post"},
 *     summary="Menambahkan postingan baru",
 *     description="Menambahkan postingan baru dengan foto, judul, konten singkat, dan konten lengkap",
 *     @OA\Parameter(
 *         name="photo",
 *         in="query",
 *         description="Foto postingan (jpg, jpeg, png, gif)",
 *         required=true,
 *         @OA\Schema(
 *             type="string",
 *             format="binary"
 *         )
 *     ),
 *     @OA\Parameter(
 *         name="heading",
 *         in="query",
 *         description="Judul postingan",
 *         required=true,
 *         @OA\Schema(
 *             type="string"
 *         )
 *     ),
 *     @OA\Parameter(
 *         name="short_content",
 *         in="query",
 *         description="Konten singkat postingan",
 *         required=true,
 *         @OA\Schema(
 *             type="string"
 *         )
 *     ),
 *     @OA\Parameter(
 *         name="content",
 *         in="query",
 *         description="Konten lengkap postingan",
 *         required=true,
 *         @OA\Schema(
 *             type="string"
 *         )
 *     ),
 *     @OA\Response(
 *         response=200,
 *         description="Ok",
 *         @OA\JsonContent(
 *             @OA\Property(property="meta", type="object",
 *                 @OA\Property(property="code", type="integer", example="200"),
 *                 @OA\Property(property="status", type="string", example="success"),
 *                 @OA\Property(property="message", type="string", example="Post is added successfully!")
 *             ),
 *             @OA\Property(property="data", type="object",
 *                 @OA\Property(property="photo", type="string", example="bungalow.jpg"),
 *                 @OA\Property(property="heading", type="string", example="The best bungalow"),
 *                 @OA\Property(property="short_content", type="string", example="Bungalow yang berada pada singaraja lovina"),
 *                 @OA\Property(property="content", type="string", example="Seabreeze bungalow ini terletak di jalan pantai binaria lovina yang memiliki 2 tipe kamar "),
 *                 @OA\Property(property="total_view", type="integer", example=5),
 *                 @OA\Property(property="created_at", type="string", format="date-time", example="2022-06-26 09:27:07"),
 *                 @OA\Property(property="updated_at", type="string", format="date-time", example="2022-06-26 13:31:19"),
 *                 @OA\Property(property="id", type="integer", example=1)
 *             )
 *         )
 *     ),
 *     @OA\Response(
 *         response=400,
 *         description="Bad Request"
 *     ),
 *     @OA\Response(
 *         response=403,
 *         description="Forbidden"
 *     )
 * )
 */
    public function store(Request $request)
    {
        DB::beginTransaction();

        try {
            $request->validate([
                'photo' => 'required|image|mimes:jpg,jpeg,png,gif',
                'heading' => 'required',
                'short_content' => 'required',
                'content' => 'required'
            ]);
    
            $ext = $request->file('photo')->extension();
            $final_name = time().'.'.$ext;
            $request->file('photo')->move(public_path('uploads/'), $final_name);
    
            $obj = new Post();
            $obj->photo = $final_name;
            $obj->heading = $request->heading;
            $obj->short_content = $request->short_content;
            $obj->content = $request->content;
            $obj->total_view = 1;
            $obj->save();
    
            DB::commit();
    
            return redirect()->back()->with('success', 'Post is added successfully.');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->with('error', 'Failed to add post. Please try again.');
        }
    }

    public function edit($id)
    {
        $post_data = Post::where('id',$id)->first();
        return view('admin.post_edit', compact('post_data'));
    }

/**
 * @OA\Put(
 *     path="/post/{id}",
 *     tags={"Post"},
 *     summary="Update postingan",
 *     description="Mengubah informasi postingan dengan foto, judul, konten singkat, dan konten lengkap",
 *     @OA\Parameter(
 *         name="id",
 *         in="path",
 *         description="ID postingan yang akan diupdate",
 *         required=true,
 *         @OA\Schema(
 *             type="integer",
 *             format="int64"
 *         )
 *     ),
 *     @OA\Parameter(
 *         name="photo",
 *         in="query",
 *         description="Foto postingan (jpg, jpeg, png, gif)",
 *         required=true,
 *         @OA\Schema(
 *             type="string",
 *             format="binary"
 *         )
 *     ),
 *     @OA\Parameter(
 *         name="heading",
 *         in="query",
 *         description="Judul postingan",
 *         required=true,
 *         @OA\Schema(
 *             type="string"
 *         )
 *     ),
 *     @OA\Parameter(
 *         name="short_content",
 *         in="query",
 *         description="Konten singkat postingan",
 *         required=true,
 *         @OA\Schema(
 *             type="string"
 *         )
 *     ),
 *     @OA\Parameter(
 *         name="content",
 *         in="query",
 *         description="Konten lengkap postingan",
 *         required=true,
 *         @OA\Schema(
 *             type="string"
 *         )
 *     ),
 *     @OA\Response(
 *         response=200,
 *         description="Ok",
 *         @OA\JsonContent(
 *             @OA\Property(property="meta", type="object",
 *                 @OA\Property(property="code", type="integer", example="200"),
 *                 @OA\Property(property="status", type="string", example="success"),
 *                 @OA\Property(property="message", type="string", example="Post is updated successfully!")
 *             ),
 *             @OA\Property(property="data", type="object",
 *                 @OA\Property(property="photo", type="string", example="bungalow.jpg"),
 *                 @OA\Property(property="heading", type="string", example="The best bungalow"),
 *                 @OA\Property(property="short_content", type="string", example="Bungalow lovina"),
 *                 @OA\Property(property="content", type="string", example="Seabreeze bungalow ini terletak di jalan pantai binaria lovina yang memiliki 7 Kamar "),
 *                 @OA\Property(property="total_view", type="integer", example=5),
 *                 @OA\Property(property="created_at", type="string", format="date-time", example="2022-06-26 09:27:07"),
 *                 @OA\Property(property="updated_at", type="string", format="date-time", example="2022-06-26 14:30:20"),
 *                 @OA\Property(property="id", type="integer", example=1)
 *             )
 *         )
 *     ),
 *     @OA\Response(
 *         response=400,
 *         description="Bad Request"
 *     ),
 *     @OA\Response(
 *         response=403,
 *         description="Forbidden"
 *     )
 * )
 */
    public function update(Request $request,$id) 
    {           
        DB::beginTransaction();

        try {
            $obj = Post::where('id', $id)->first();
        
            if ($request->hasFile('photo')) {
                $request->validate([
                    'photo' => 'image|mimes:jpg,jpeg,png,gif'
                ]);

                unlink(public_path('uploads/' . $obj->photo));
                $ext = $request->file('photo')->extension();
                $final_name = time() . '.' . $ext;
                $request->file('photo')->move(public_path('uploads/'), $final_name);
                $obj->photo = $final_name;
            }

            $obj->heading = $request->heading;
            $obj->short_content = $request->short_content;
            $obj->content = $request->content;
            $obj->save();

            DB::commit();

            return redirect()->back()->with('success', 'Post is updated successfully.');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->with('error', 'Failed to update post. Please try again.');
        }
    }

/**
 * @OA\Delete(
 *     path="/post/{id}",
 *     tags={"Post"},
 *     summary="Hapus postingan",
 *     description="Menghapus postingan berdasarkan ID",
 *     @OA\Parameter(
 *         name="id",
 *         in="path",
 *         description="ID postingan yang akan dihapus",
 *         required=true,
 *         @OA\Schema(
 *             type="integer",
 *             format="int64"
 *         )
 *     ),
 *     @OA\Response(
 *         response=200,
 *         description="Ok",
 *         @OA\JsonContent(
 *             @OA\Property(property="meta", type="object",
 *                 @OA\Property(property="code", type="integer", example="200"),
 *                 @OA\Property(property="status", type="string", example="success"),
 *                 @OA\Property(property="message", type="string", example="Post is deleted successfully!")
 *             )
 *         )
 *     ),
 *     @OA\Response(
 *         response=400,
 *         description="Bad Request"
 *     ),
 *     @OA\Response(
 *         response=403,
 *         description="Forbidden"
 *     )
 * )
 */
    public function delete($id)
    {
        DB::beginTransaction();

        try {
            $single_data = Post::where('id', $id)->first();
            unlink(public_path('uploads/' . $single_data->photo));
            $single_data->delete();

            DB::commit();
            return redirect()->back()->with('success', 'Post is deleted successfully.');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->with('error', 'Failed to delete post. Please try again.');
        }
    }
}
