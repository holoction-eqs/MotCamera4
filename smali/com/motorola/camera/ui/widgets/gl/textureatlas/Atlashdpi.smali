.class public final Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;
.super Landroidx/work/impl/StartStopTokens;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 54

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v3, 0x61

    const/4 v5, 0x5

    const/16 v6, 0x3c

    const/4 v9, 0x0

    const/4 v15, 0x4

    const/4 v7, 0x3

    const/16 v8, 0xe

    const/4 v13, 0x2

    const/4 v10, 0x1

    if-eq v1, v10, :cond_1

    if-eq v1, v13, :cond_0

    .line 1
    invoke-direct {v0, v8}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    new-instance v1, Landroid/graphics/Point;

    const/16 v8, 0x14a

    const/16 v11, 0xfd

    invoke-direct {v1, v8, v11}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "btn_bg_standard"

    new-instance v11, Landroid/graphics/Rect;

    const/16 v2, 0x10c

    const/16 v14, 0x148

    const/16 v12, 0x9d

    invoke-direct {v11, v2, v3, v14, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v26, 0x0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v9, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v4, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v4

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v8

    move-object/from16 v25, v11

    move-object/from16 v27, v2

    move-object/from16 v28, v12

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v34, "btn_bg_tap"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v8, 0xde

    const/16 v11, 0x10c

    const/16 v12, 0xa2

    invoke-direct {v4, v11, v12, v14, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v36, 0x0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v9, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v39, v6

    check-cast v39, Landroid/graphics/Point;

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v8

    move-object/from16 v38, v11

    invoke-direct/range {v33 .. v39}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "btn_focus_ring_select"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x107

    const/16 v8, 0xb5

    const/16 v11, 0xb3

    invoke-direct {v4, v11, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/16 v6, 0x54

    invoke-direct {v3, v9, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v6

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v2

    move-object/from16 v25, v4

    move-object/from16 v27, v3

    move-object/from16 v28, v8

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v38, "focus_10"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xae

    invoke-direct {v3, v13, v13, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v8, 0xac

    invoke-direct {v6, v9, v9, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v43, v8

    check-cast v43, Landroid/graphics/Point;

    const/16 v40, 0x0

    move-object/from16 v37, v2

    move-object/from16 v39, v3

    move-object/from16 v41, v6

    move-object/from16 v42, v12

    invoke-direct/range {v37 .. v43}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v34, "hold_steady_ring"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v6, 0x10d

    const/16 v8, 0x5c

    invoke-direct {v3, v11, v13, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v8, 0x5a

    invoke-direct {v6, v9, v9, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v39, v8

    check-cast v39, Landroid/graphics/Point;

    move-object/from16 v33, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v6

    move-object/from16 v38, v12

    invoke-direct/range {v33 .. v39}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "ic_camera_select"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0xd3

    const/16 v6, 0x71

    const/16 v8, 0x93

    invoke-direct {v3, v6, v11, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v36, 0x1

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x23

    const/16 v8, 0x23

    invoke-direct {v5, v10, v7, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v8, 0x24

    invoke-direct {v6, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v8

    check-cast v29, Landroid/graphics/Point;

    const/16 v26, 0x1

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "ic_delete"

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0xf6

    const/16 v8, 0x96

    const/16 v12, 0xd8

    invoke-direct {v5, v8, v12, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x1e

    const/16 v8, 0x21

    invoke-direct {v4, v3, v7, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Point;

    const/16 v7, 0x24

    invoke-direct {v3, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v8

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v2

    move-object/from16 v25, v5

    move-object/from16 v27, v4

    move-object/from16 v28, v3

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v34, "ic_done"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0xb2

    const/16 v8, 0xba

    const/16 v12, 0xcf

    const/16 v10, 0xd1

    invoke-direct {v4, v5, v8, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x21

    invoke-direct {v5, v15, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v39, v8

    check-cast v39, Landroid/graphics/Point;

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    move-object/from16 v38, v3

    invoke-direct/range {v33 .. v39}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v25, "ic_focus_lock"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x71

    const/16 v5, 0xd8

    const/16 v8, 0x91

    const/16 v10, 0xf8

    invoke-direct {v3, v4, v5, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v27, 0x0

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x20

    invoke-direct {v4, v9, v9, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v5, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v30, v5

    check-cast v30, Landroid/graphics/Point;

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v8

    invoke-direct/range {v24 .. v30}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v25, "ic_play"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xd2

    const/16 v5, 0xf4

    const/16 v8, 0xba

    const/16 v10, 0x107

    invoke-direct {v3, v5, v8, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v27, 0x1

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x6

    const/16 v10, 0xb

    invoke-direct {v4, v10, v5, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v30, v6

    check-cast v30, Landroid/graphics/Point;

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-direct/range {v24 .. v30}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v25, "ic_rotate_device"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x112

    const/16 v5, 0x58

    invoke-direct {v3, v4, v13, v14, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x39

    const/16 v6, 0x29

    const/16 v7, 0x6f

    const/16 v10, 0x7f

    invoke-direct {v4, v5, v6, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v6, 0xa8

    invoke-direct {v5, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v30, v7

    check-cast v30, Landroid/graphics/Point;

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-direct/range {v24 .. v30}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v25, "ic_rotate_device_arrows"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x6c

    const/16 v5, 0xfb

    invoke-direct {v3, v13, v11, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x1f

    const/16 v7, 0x30

    const/16 v10, 0x89

    const/16 v12, 0x78

    invoke-direct {v4, v5, v7, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v30, v6

    check-cast v30, Landroid/graphics/Point;

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-direct/range {v24 .. v30}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v25, "ic_suggestion_lens"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xd6

    const/16 v5, 0xcc

    const/16 v6, 0xef

    invoke-direct {v3, v11, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x1a

    const/4 v7, 0x1

    invoke-direct {v4, v7, v7, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    const/16 v10, 0x1b

    invoke-direct {v7, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v30, v12

    check-cast v30, Landroid/graphics/Point;

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    invoke-direct/range {v24 .. v30}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v25, "ic_suggestion_lowlight"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xcc

    const/16 v7, 0x98

    const/16 v12, 0xad

    invoke-direct {v3, v7, v11, v12, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x17

    const/4 v11, 0x1

    invoke-direct {v4, v13, v11, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v30, v11

    check-cast v30, Landroid/graphics/Point;

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    invoke-direct/range {v24 .. v30}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v25, "ic_suggestion_macro"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xd4

    const/16 v7, 0xd5

    invoke-direct {v3, v4, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v27, 0x0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9, v9, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v30, v8

    check-cast v30, Landroid/graphics/Point;

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    invoke-direct/range {v24 .. v30}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v15, "ic_suggestion_photo"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xd1

    const/16 v7, 0xda

    const/16 v8, 0xea

    const/16 v9, 0xf1

    invoke-direct {v3, v4, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v17, 0x1

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x18

    const/4 v8, 0x1

    invoke-direct {v4, v8, v8, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v20, v7

    check-cast v20, Landroid/graphics/Point;

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v15, "ic_suggestion_portrait"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xf1

    const/16 v5, 0xda

    const/16 v7, 0x106

    invoke-direct {v3, v6, v5, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x19

    const/16 v6, 0x19

    invoke-direct {v4, v13, v13, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/graphics/Point;

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_0
    move v1, v8

    .line 2
    invoke-direct {v0, v1}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xea

    const/16 v3, 0x261

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v34, "btn_bg_standard"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xec

    const/16 v6, 0x93

    const/16 v8, 0x13c

    const/16 v10, 0xe3

    invoke-direct {v3, v6, v4, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v36, 0x0

    new-instance v4, Landroid/graphics/Rect;

    const/16 v8, 0x50

    invoke-direct {v4, v9, v9, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v39, v11

    check-cast v39, Landroid/graphics/Point;

    move-object/from16 v33, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v38, v10

    invoke-direct/range {v33 .. v39}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v34, "btn_bg_tap"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x191

    const/16 v10, 0x141

    const/16 v11, 0xe3

    invoke-direct {v3, v6, v10, v11, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9, v9, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v39, v8

    check-cast v39, Landroid/graphics/Point;

    move-object/from16 v33, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v38, v6

    invoke-direct/range {v33 .. v39}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v41, "btn_focus_ring_select"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x4e

    const/16 v6, 0x1cb

    const/16 v8, 0xbf

    const/16 v10, 0x23c

    invoke-direct {v3, v4, v6, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v43, 0x0

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x71

    invoke-direct {v4, v9, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v46, v6

    check-cast v46, Landroid/graphics/Point;

    move-object/from16 v40, v2

    move-object/from16 v42, v3

    move-object/from16 v44, v4

    move-object/from16 v45, v8

    invoke-direct/range {v40 .. v46}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v34, "focus_10"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xe7

    const/16 v6, 0xe7

    invoke-direct {v3, v13, v13, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0xe5

    invoke-direct {v4, v9, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v39, v6

    check-cast v39, Landroid/graphics/Point;

    move-object/from16 v33, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v38, v8

    invoke-direct/range {v33 .. v39}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v41, "hold_steady_ring"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x1c6

    const/16 v6, 0x14f

    const/16 v8, 0x7a

    invoke-direct {v3, v13, v6, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v36, 0x1

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x78

    const/4 v8, 0x1

    invoke-direct {v4, v9, v8, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v46, v6

    check-cast v46, Landroid/graphics/Point;

    const/16 v43, 0x1

    move-object/from16 v40, v2

    move-object/from16 v42, v3

    move-object/from16 v44, v4

    move-object/from16 v45, v8

    invoke-direct/range {v40 .. v46}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v48, "ic_camera_select"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xaf

    const/16 v6, 0x196

    const/16 v8, 0xdd

    const/16 v10, 0x1c0

    invoke-direct {v3, v4, v6, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x2f

    const/16 v8, 0x2e

    const/4 v10, 0x1

    invoke-direct {v4, v10, v15, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v8, 0x30

    invoke-direct {v6, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v53, v10

    check-cast v53, Landroid/graphics/Point;

    const/16 v50, 0x1

    move-object/from16 v47, v2

    move-object/from16 v49, v3

    move-object/from16 v51, v4

    move-object/from16 v52, v6

    invoke-direct/range {v47 .. v53}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "ic_delete"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x239

    const/16 v6, 0x213

    const/16 v10, 0xc4

    const/16 v11, 0xe2

    invoke-direct {v3, v10, v6, v11, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x9

    const/16 v11, 0x27

    const/16 v12, 0x2b

    invoke-direct {v4, v6, v5, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v14

    check-cast v29, Landroid/graphics/Point;

    const/16 v26, 0x1

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v11

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v34, "ic_done"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x242

    const/16 v11, 0x28

    const/16 v14, 0x25f

    invoke-direct {v3, v13, v4, v11, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v11, 0x27

    const/16 v15, 0xa

    invoke-direct {v4, v5, v15, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v39, v15

    check-cast v39, Landroid/graphics/Point;

    move-object/from16 v33, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v38, v5

    invoke-direct/range {v33 .. v39}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "ic_focus_lock"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x7f

    const/16 v5, 0x196

    const/16 v15, 0xaa

    const/16 v7, 0x1c1

    invoke-direct {v3, v4, v5, v15, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v26, 0x0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9, v9, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v12, v12}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v7

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v35, "ic_play"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x241

    const/16 v5, 0x8d

    const/16 v7, 0x75

    invoke-direct {v3, v7, v4, v5, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v26, 0x1

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0xf

    invoke-direct {v4, v5, v6, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v40, v6

    check-cast v40, Landroid/graphics/Point;

    const/16 v37, 0x1

    move-object/from16 v34, v2

    move-object/from16 v36, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    invoke-direct/range {v34 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v35, "ic_rotate_device"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x23d

    const/16 v5, 0x1cb

    const/16 v6, 0x49

    invoke-direct {v3, v13, v5, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x4d

    const/16 v6, 0x37

    const/16 v7, 0x94

    const/16 v8, 0xa9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v6, 0xe0

    invoke-direct {v5, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v40, v7

    check-cast v40, Landroid/graphics/Point;

    move-object/from16 v34, v2

    move-object/from16 v36, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    invoke-direct/range {v34 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v35, "ic_rotate_device_arrows"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x14a

    const/16 v5, 0xec

    const/16 v7, 0x8e

    invoke-direct {v3, v13, v5, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x2a

    const/16 v7, 0x41

    const/16 v8, 0xb6

    const/16 v11, 0x9f

    invoke-direct {v4, v5, v7, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v40, v6

    check-cast v40, Landroid/graphics/Point;

    move-object/from16 v34, v2

    move-object/from16 v36, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    invoke-direct/range {v34 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v35, "ic_suggestion_lens"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x20e

    const/16 v5, 0x1ee

    const/16 v6, 0xe4

    invoke-direct {v3, v10, v5, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x22

    invoke-direct {v4, v13, v13, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v7, 0x24

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v40, v8

    check-cast v40, Landroid/graphics/Point;

    move-object/from16 v34, v2

    move-object/from16 v36, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v6

    invoke-direct/range {v34 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "ic_suggestion_lowlight"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x25e

    const/16 v6, 0x23e

    const/16 v8, 0xdf

    invoke-direct {v3, v10, v6, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x1e

    const/4 v8, 0x3

    invoke-direct {v4, v8, v13, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v8

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v6

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v21, "ic_suggestion_macro"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x1e9

    const/16 v6, 0x1c5

    const/16 v8, 0xe8

    invoke-direct {v3, v10, v6, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v23, 0x0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9, v9, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v26, v8

    check-cast v26, Landroid/graphics/Point;

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v6

    invoke-direct/range {v20 .. v26}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v16, "ic_suggestion_photo"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x4d

    const/16 v6, 0x2d

    const/16 v8, 0x242

    invoke-direct {v3, v6, v8, v4, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x1

    new-instance v6, Landroid/graphics/Rect;

    const/16 v8, 0x1f

    invoke-direct {v6, v13, v13, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v21, v8

    check-cast v21, Landroid/graphics/Point;

    const/16 v18, 0x1

    move-object v15, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v18, "ic_suggestion_portrait"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x70

    const/16 v6, 0x52

    const/16 v8, 0x241

    invoke-direct {v3, v6, v8, v5, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x21

    const/4 v8, 0x3

    invoke-direct {v5, v8, v8, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/graphics/Point;

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    invoke-direct/range {v17 .. v23}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_1
    move v1, v8

    .line 3
    invoke-direct {v0, v1}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x144

    const/16 v4, 0x7d

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v35, "btn_bg_standard"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0xbb

    const/16 v8, 0x37

    const/16 v10, 0x5f

    const/16 v11, 0xe3

    invoke-direct {v4, v7, v8, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v37, 0x0

    new-instance v7, Landroid/graphics/Rect;

    const/16 v10, 0x28

    invoke-direct {v7, v9, v9, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v40, v12

    check-cast v40, Landroid/graphics/Point;

    move-object/from16 v34, v2

    move-object/from16 v36, v4

    move-object/from16 v38, v7

    move-object/from16 v39, v11

    invoke-direct/range {v34 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v35, "btn_bg_tap"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x102

    const/16 v11, 0x41

    const/16 v12, 0x12a

    const/16 v14, 0x69

    invoke-direct {v4, v7, v11, v12, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v40, v10

    check-cast v40, Landroid/graphics/Point;

    move-object/from16 v34, v2

    move-object/from16 v36, v4

    move-object/from16 v38, v7

    move-object/from16 v39, v11

    invoke-direct/range {v34 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v42, "btn_focus_ring_select"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x7b

    const/16 v10, 0x43

    const/16 v11, 0xb2

    const/16 v12, 0x7a

    invoke-direct {v4, v12, v10, v11, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v10, 0x38

    invoke-direct {v7, v9, v9, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v47, v10

    check-cast v47, Landroid/graphics/Point;

    const/16 v44, 0x0

    move-object/from16 v41, v2

    move-object/from16 v43, v4

    move-object/from16 v45, v7

    move-object/from16 v46, v11

    invoke-direct/range {v41 .. v47}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v39, "focus_10"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x75

    invoke-direct {v4, v13, v13, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v10, 0x73

    invoke-direct {v7, v9, v9, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v44, v10

    check-cast v44, Landroid/graphics/Point;

    const/16 v41, 0x0

    move-object/from16 v38, v2

    move-object/from16 v40, v4

    move-object/from16 v42, v7

    move-object/from16 v43, v11

    invoke-direct/range {v38 .. v44}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v35, "hold_steady_ring"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0xb6

    const/16 v10, 0x3e

    const/16 v11, 0x7a

    invoke-direct {v4, v11, v13, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v40, v11

    check-cast v40, Landroid/graphics/Point;

    move-object/from16 v34, v2

    move-object/from16 v36, v4

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    invoke-direct/range {v34 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v42, "ic_camera_select"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0xb7

    const/16 v7, 0x64

    const/16 v10, 0xcf

    const/16 v11, 0x7b

    invoke-direct {v4, v5, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v36, 0x1

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x18

    const/4 v10, 0x1

    invoke-direct {v5, v9, v10, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v47, v11

    check-cast v47, Landroid/graphics/Point;

    const/16 v44, 0x1

    move-object/from16 v41, v2

    move-object/from16 v43, v4

    move-object/from16 v45, v5

    move-object/from16 v46, v10

    invoke-direct/range {v41 .. v47}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v38, "ic_delete"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x132

    const/16 v10, 0x142

    const/16 v11, 0x16

    invoke-direct {v4, v5, v13, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/16 v12, 0x14

    invoke-direct {v10, v15, v13, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v43, v6

    check-cast v43, Landroid/graphics/Point;

    const/16 v40, 0x1

    move-object/from16 v37, v2

    move-object/from16 v39, v4

    move-object/from16 v41, v10

    move-object/from16 v42, v14

    invoke-direct/range {v37 .. v43}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v34, "ic_done"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x51

    const/16 v10, 0xe8

    const/16 v14, 0xfc

    invoke-direct {v4, v10, v6, v14, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v13, v15, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v39, v11

    check-cast v39, Landroid/graphics/Point;

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v3

    move-object/from16 v38, v6

    invoke-direct/range {v33 .. v39}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v25, "ic_focus_lock"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xfd

    const/16 v6, 0x4c

    invoke-direct {v3, v10, v8, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v27, 0x0

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x15

    invoke-direct {v4, v9, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v30, v6

    check-cast v30, Landroid/graphics/Point;

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v8

    invoke-direct/range {v24 .. v30}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v25, "ic_play"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x40

    const/16 v6, 0x30

    const/16 v8, 0x13f

    invoke-direct {v3, v5, v6, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v34, 0x1

    new-instance v4, Landroid/graphics/Rect;

    const/4 v6, 0x7

    invoke-direct {v4, v6, v15, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v30, v7

    check-cast v30, Landroid/graphics/Point;

    const/16 v27, 0x1

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v6

    invoke-direct/range {v24 .. v30}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v25, "ic_rotate_device"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x108

    const/16 v6, 0x12d

    const/16 v7, 0x3c

    invoke-direct {v3, v4, v13, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x26

    const/16 v7, 0x1b

    const/16 v8, 0x4b

    const/16 v11, 0x55

    invoke-direct {v4, v6, v7, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v7, 0x70

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v30, v8

    check-cast v30, Landroid/graphics/Point;

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v6

    invoke-direct/range {v24 .. v30}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v32, "ic_rotate_device_arrows"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x32

    const/16 v6, 0xbb

    const/16 v8, 0x103

    invoke-direct {v3, v6, v13, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x50

    const/16 v8, 0x20

    const/16 v11, 0x5c

    invoke-direct {v4, v12, v8, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v37, v7

    check-cast v37, Landroid/graphics/Point;

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    move-object/from16 v35, v4

    move-object/from16 v36, v6

    invoke-direct/range {v31 .. v37}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v12, "ic_suggestion_lens"

    new-instance v13, Landroid/graphics/Rect;

    const/16 v3, 0x78

    const/16 v4, 0x66

    const/16 v6, 0xfa

    invoke-direct {v13, v10, v4, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Rect;

    const/16 v3, 0x12

    invoke-direct {v15, v9, v9, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v17, v6

    check-cast v17, Landroid/graphics/Point;

    move-object v11, v2

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v17}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v11, "ic_suggestion_lowlight"

    new-instance v12, Landroid/graphics/Rect;

    const/16 v4, 0xd4

    const/16 v6, 0x64

    const/16 v7, 0x76

    const/16 v8, 0xe3

    invoke-direct {v12, v4, v6, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x1

    new-instance v14, Landroid/graphics/Rect;

    const/16 v4, 0x10

    const/4 v6, 0x1

    invoke-direct {v14, v6, v9, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v16, v6

    check-cast v16, Landroid/graphics/Point;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0xe

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v11, "ic_suggestion_macro"

    new-instance v12, Landroid/graphics/Rect;

    const/16 v6, 0x12f

    const/16 v7, 0x45

    const/16 v8, 0x141

    const/16 v10, 0x57

    invoke-direct {v12, v6, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x0

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v9, v9, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v16, v6

    check-cast v16, Landroid/graphics/Point;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0xf

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v11, "ic_suggestion_photo"

    new-instance v12, Landroid/graphics/Rect;

    const/16 v6, 0x12f

    const/16 v7, 0x5c

    const/16 v10, 0x6c

    invoke-direct {v12, v6, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x1

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v9, v9, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v16, v6

    check-cast v16, Landroid/graphics/Point;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v25, "ic_suggestion_portrait"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x2b

    const/16 v7, 0x1b

    const/16 v8, 0x142

    invoke-direct {v4, v5, v7, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x11

    const/4 v7, 0x1

    invoke-direct {v5, v7, v7, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/graphics/Point;

    move-object/from16 v24, v2

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v7

    invoke-direct/range {v24 .. v30}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 51

    move-object/from16 v0, p0

    const/16 v4, 0x1de

    const/4 v13, 0x1

    const/4 v9, 0x0

    const/4 v14, 0x2

    const/4 v6, 0x3

    const/16 v15, 0xe

    const/4 v11, 0x5

    const/4 v7, 0x4

    move/from16 v10, p1

    if-eq v10, v7, :cond_0

    .line 4
    invoke-direct {v0, v15}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    new-instance v10, Landroid/graphics/Point;

    const/16 v1, 0x27a

    const/16 v12, 0x1ed

    invoke-direct {v10, v1, v12}, Landroid/graphics/Point;-><init>(II)V

    iput-object v10, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "btn_bg_standard"

    new-instance v12, Landroid/graphics/Rect;

    const/16 v15, 0x151

    const/16 v8, 0x1d7

    const/16 v5, 0xd9

    const/16 v2, 0x15f

    invoke-direct {v12, v5, v2, v15, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v35, 0x0

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x78

    invoke-direct {v5, v9, v9, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v3, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v3

    check-cast v29, Landroid/graphics/Point;

    const/16 v26, 0x0

    move-object/from16 v23, v10

    move-object/from16 v25, v12

    move-object/from16 v27, v5

    move-object/from16 v28, v15

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v41, "btn_bg_tap"

    new-instance v5, Landroid/graphics/Rect;

    const/16 v10, 0x1ce

    const/16 v12, 0x156

    const/16 v15, 0x166

    invoke-direct {v5, v12, v15, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9, v9, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v46, v8

    check-cast v46, Landroid/graphics/Point;

    const/16 v43, 0x0

    move-object/from16 v40, v3

    move-object/from16 v42, v5

    move-object/from16 v44, v4

    move-object/from16 v45, v10

    invoke-direct/range {v40 .. v46}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v14, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v33, "btn_focus_ring_select"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x161

    const/16 v8, 0x208

    const/16 v10, 0xb8

    invoke-direct {v4, v2, v10, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0xa9

    invoke-direct {v5, v9, v9, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v38, v8

    check-cast v38, Landroid/graphics/Point;

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move-object/from16 v36, v5

    move-object/from16 v37, v12

    invoke-direct/range {v32 .. v38}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "focus_10"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x15a

    const/16 v8, 0x15a

    invoke-direct {v4, v14, v14, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x158

    invoke-direct {v5, v9, v9, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v8

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v12

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v33, "hold_steady_ring"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x212

    const/16 v7, 0xb3

    invoke-direct {v4, v2, v14, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v26, 0x1

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0xb4

    invoke-direct {v5, v13, v14, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v38, v8

    check-cast v38, Landroid/graphics/Point;

    const/16 v43, 0x1

    const/16 v35, 0x1

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move-object/from16 v36, v5

    move-object/from16 v37, v7

    invoke-direct/range {v32 .. v38}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v45, "ic_camera_select"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x243

    const/16 v7, 0x1e9

    const/16 v8, 0x200

    const/16 v12, 0x1ac

    invoke-direct {v4, v8, v12, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x44

    const/16 v8, 0x46

    const/4 v12, 0x7

    invoke-direct {v5, v6, v12, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    const/16 v8, 0x48

    invoke-direct {v7, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v50, v8

    check-cast v50, Landroid/graphics/Point;

    const/16 v47, 0x1

    move-object/from16 v44, v3

    move-object/from16 v46, v4

    move-object/from16 v48, v5

    move-object/from16 v49, v7

    invoke-direct/range {v44 .. v50}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v41, "ic_delete"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x1d3

    const/16 v7, 0x1ff

    const/16 v8, 0x19e

    invoke-direct {v4, v5, v15, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x3a

    const/16 v8, 0x8

    const/16 v12, 0x40

    const/16 v15, 0xe

    invoke-direct {v5, v15, v8, v7, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    const/16 v12, 0x48

    invoke-direct {v8, v12, v12}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v46, v12

    check-cast v46, Landroid/graphics/Point;

    move-object/from16 v40, v3

    move-object/from16 v42, v4

    move-object/from16 v44, v5

    move-object/from16 v45, v8

    invoke-direct/range {v40 .. v46}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "ic_done"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x24f

    const/16 v8, 0x97

    const/16 v12, 0x217

    const/16 v15, 0x6c

    invoke-direct {v4, v12, v15, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0xf

    const/16 v13, 0x40

    const/16 v15, 0x8

    invoke-direct {v5, v15, v8, v13, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    const/16 v13, 0x48

    invoke-direct {v8, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v13

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v8

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v23, "ic_focus_lock"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x244

    const/16 v8, 0x1a7

    const/16 v13, 0x204

    const/16 v15, 0x167

    invoke-direct {v4, v13, v15, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v25, 0x0

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x40

    invoke-direct {v5, v9, v9, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v28, v8

    check-cast v28, Landroid/graphics/Point;

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v9

    invoke-direct/range {v22 .. v28}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v22, "ic_play"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x23a

    const/16 v8, 0x67

    const/16 v9, 0x3b

    invoke-direct {v4, v12, v9, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x1

    new-instance v8, Landroid/graphics/Rect;

    const/16 v9, 0x17

    const/16 v13, 0xe

    invoke-direct {v8, v9, v13, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    const/16 v9, 0x48

    invoke-direct {v7, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v27, v9

    check-cast v27, Landroid/graphics/Point;

    const/16 v36, 0x1

    const/16 v24, 0x1

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v8

    move-object/from16 v26, v7

    invoke-direct/range {v21 .. v27}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xa

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v22, "ic_rotate_device"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x276

    const/16 v8, 0x162

    const/16 v9, 0x20d

    invoke-direct {v4, v9, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0xdd

    const/16 v9, 0xfd

    const/16 v10, 0x74

    const/16 v13, 0x53

    invoke-direct {v7, v10, v13, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    const/16 v9, 0x150

    invoke-direct {v8, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v27, v9

    check-cast v27, Landroid/graphics/Point;

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    invoke-direct/range {v21 .. v27}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xb

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v22, "ic_rotate_device_arrows"

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0xd4

    const/16 v8, 0x1eb

    invoke-direct {v4, v14, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    const/16 v7, 0x62

    const/16 v8, 0x111

    const/16 v9, 0x3f

    const/16 v10, 0xee

    invoke-direct {v2, v9, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    const/16 v8, 0x150

    invoke-direct {v7, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v27, v8

    check-cast v27, Landroid/graphics/Point;

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v2

    move-object/from16 v26, v7

    invoke-direct/range {v21 .. v27}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v22, "ic_suggestion_lens"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x278

    const/16 v7, 0x1dc

    const/16 v8, 0x248

    const/16 v9, 0x1ac

    invoke-direct {v3, v8, v9, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x33

    invoke-direct {v4, v6, v6, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    const/16 v9, 0x36

    invoke-direct {v8, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v27, v10

    check-cast v27, Landroid/graphics/Point;

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v8

    invoke-direct/range {v21 .. v27}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v34, "ic_suggestion_lowlight"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x1d3

    const/16 v8, 0x1a3

    const/16 v10, 0x1fb

    invoke-direct {v3, v4, v8, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v8, 0x2d

    invoke-direct {v4, v11, v6, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v39, v10

    check-cast v39, Landroid/graphics/Point;

    move-object/from16 v33, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v38, v8

    invoke-direct/range {v33 .. v39}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "ic_suggestion_macro"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x24b

    invoke-direct {v3, v12, v14, v4, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v8, 0x35

    const/16 v10, 0x35

    const/4 v12, 0x1

    invoke-direct {v4, v12, v12, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v10

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move/from16 v26, v5

    move-object/from16 v27, v4

    move-object/from16 v28, v8

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v20, "ic_suggestion_photo"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x23f

    const/16 v5, 0x26f

    const/16 v8, 0x66

    const/16 v10, 0x3b

    invoke-direct {v3, v4, v10, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v22, 0x1

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x2e

    invoke-direct {v4, v6, v6, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v25, v6

    check-cast v25, Landroid/graphics/Point;

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-direct/range {v19 .. v25}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v13, "ic_suggestion_portrait"

    new-instance v14, Landroid/graphics/Rect;

    const/16 v3, 0x275

    const/16 v4, 0x193

    const/16 v5, 0x249

    const/16 v6, 0x167

    invoke-direct {v14, v5, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v15, 0x1

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x31

    const/16 v5, 0x31

    invoke-direct {v3, v11, v11, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Point;

    move-object v12, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-direct/range {v12 .. v18}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_0
    move v1, v15

    .line 5
    invoke-direct {v0, v1}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x466

    const/16 v3, 0x1fa

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "btn_bg_standard"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x2ec

    const/16 v8, 0xe8

    const/16 v10, 0x38c

    const/16 v12, 0x188

    invoke-direct {v3, v5, v8, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v43, 0x0

    new-instance v5, Landroid/graphics/Rect;

    const/16 v10, 0xa0

    invoke-direct {v5, v9, v9, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v15

    check-cast v29, Landroid/graphics/Point;

    const/16 v26, 0x0

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v5

    move-object/from16 v28, v13

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "btn_bg_tap"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x391

    const/16 v13, 0x431

    invoke-direct {v3, v5, v8, v13, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v35, 0x0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v9, v9, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v10

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v5

    move-object/from16 v28, v8

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v41, "btn_focus_ring_select"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x2c3

    const/16 v8, 0x3a4

    const/16 v10, 0xe3

    invoke-direct {v3, v5, v14, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0xe1

    invoke-direct {v5, v9, v9, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v46, v8

    check-cast v46, Landroid/graphics/Point;

    move-object/from16 v40, v2

    move-object/from16 v42, v3

    move-object/from16 v44, v5

    move-object/from16 v45, v10

    invoke-direct/range {v40 .. v46}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v33, "focus_10"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x1cc

    invoke-direct {v3, v14, v14, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x1ca

    invoke-direct {v5, v9, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v38, v6

    check-cast v38, Landroid/graphics/Point;

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    move-object/from16 v36, v5

    move-object/from16 v37, v8

    invoke-direct/range {v32 .. v38}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "hold_steady_ring"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x1d1

    const/16 v6, 0x2be

    const/16 v8, 0xec

    invoke-direct {v3, v5, v14, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v35, 0x1

    new-instance v6, Landroid/graphics/Rect;

    const/16 v8, 0xef

    const/16 v10, 0xee

    invoke-direct {v6, v14, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    const/16 v10, 0xf0

    invoke-direct {v8, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v10

    check-cast v29, Landroid/graphics/Point;

    const/16 v26, 0x1

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v6

    move-object/from16 v28, v8

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v41, "ic_camera_select"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v6, 0x387

    const/16 v8, 0x18d

    const/16 v10, 0x3df

    invoke-direct {v3, v6, v8, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x5c

    const/16 v10, 0x5b

    const/16 v12, 0xa

    invoke-direct {v4, v7, v12, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v7, 0x60

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v46, v10

    check-cast v46, Landroid/graphics/Point;

    const/16 v43, 0x1

    move-object/from16 v40, v2

    move-object/from16 v42, v3

    move-object/from16 v44, v4

    move-object/from16 v45, v6

    invoke-direct/range {v40 .. v46}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v41, "ic_delete"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x254

    const/16 v6, 0x1f8

    const/16 v10, 0x21a

    const/16 v12, 0x1ae

    invoke-direct {v3, v10, v12, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x13

    const/16 v10, 0x4d

    const/16 v13, 0x55

    const/16 v15, 0xb

    invoke-direct {v4, v6, v15, v10, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v46, v11

    check-cast v46, Landroid/graphics/Point;

    move-object/from16 v40, v2

    move-object/from16 v42, v3

    move-object/from16 v44, v4

    move-object/from16 v45, v15

    invoke-direct/range {v40 .. v46}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "ic_done"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x259

    const/16 v11, 0x2a2

    const/16 v15, 0x1e6

    invoke-direct {v3, v4, v12, v11, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v11, 0x15

    const/16 v15, 0xc

    invoke-direct {v4, v15, v11, v13, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v15

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v11

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "ic_focus_lock"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x32d

    const/16 v11, 0x382

    const/16 v15, 0x1e2

    invoke-direct {v3, v4, v8, v11, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v26, 0x0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9, v9, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v11

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v9

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "ic_play"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x464

    const/16 v9, 0x121

    const/16 v11, 0x436

    const/16 v15, 0xe7

    invoke-direct {v3, v11, v15, v4, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v9, 0x1f

    invoke-direct {v4, v9, v6, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v7

    check-cast v29, Landroid/graphics/Point;

    const/16 v26, 0x1

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v6

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "ic_rotate_device"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x3a9

    const/16 v6, 0x434

    const/16 v7, 0xe2

    invoke-direct {v3, v4, v14, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x70

    const/16 v7, 0x126

    const/16 v9, 0x9b

    const/16 v10, 0x150

    invoke-direct {v4, v9, v6, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v7, 0x1c0

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v9

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v6

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "ic_rotate_device_arrows"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xf1

    const/16 v6, 0x2e7

    const/16 v9, 0x1a9

    invoke-direct {v3, v5, v4, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x84

    const/16 v9, 0x16b

    const/16 v10, 0x13c

    invoke-direct {v4, v13, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v7

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v6

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v33, "ic_suggestion_lens"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x2a7

    const/16 v6, 0x2e5

    const/16 v7, 0x1ec

    invoke-direct {v3, v4, v12, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x43

    const/4 v7, 0x5

    invoke-direct {v4, v7, v7, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    const/16 v9, 0x48

    invoke-direct {v7, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v38, v9

    check-cast v38, Landroid/graphics/Point;

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    move-object/from16 v36, v4

    move-object/from16 v37, v7

    invoke-direct/range {v32 .. v38}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "ic_suggestion_lowlight"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x3e4

    const/16 v7, 0x418

    const/16 v9, 0x1cb

    invoke-direct {v3, v4, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x3b

    const/4 v9, 0x7

    const/4 v10, 0x5

    invoke-direct {v4, v9, v10, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    const/16 v9, 0x48

    invoke-direct {v7, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v9

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v7

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v41, "ic_suggestion_macro"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x215

    const/16 v7, 0x1f2

    invoke-direct {v3, v5, v12, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x46

    invoke-direct {v4, v14, v14, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v7, 0x48

    invoke-direct {v5, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v46, v7

    check-cast v46, Landroid/graphics/Point;

    move-object/from16 v40, v2

    move-object/from16 v42, v3

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    invoke-direct/range {v40 .. v46}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v24, "ic_suggestion_photo"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x2ea

    const/16 v5, 0x328

    const/16 v7, 0x1e6

    invoke-direct {v3, v4, v12, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x1

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x3d

    const/4 v9, 0x5

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v7, 0x48

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v29, v7

    check-cast v29, Landroid/graphics/Point;

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    const-string v26, "ic_suggestion_portrait"

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x41d

    const/16 v6, 0x455

    const/16 v7, 0x1c5

    invoke-direct {v3, v5, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x8

    const/16 v7, 0x40

    invoke-direct {v5, v6, v6, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v7, 0x48

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/graphics/Point;

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    move/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    invoke-direct/range {v25 .. v31}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
