.class public Lcom/motorola/camera/editor/DocEditorActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/motorola/camera/editor/load/LoadDocJpegListener;
.implements Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;
.implements Lcom/motorola/camera/shadow/ShadowRemovalRunnable$ShadowRemovalListener;
.implements Lcom/motorola/camera/saving/SaveListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public hasRotated:Z

.field public mAdjustButton:Landroid/widget/Button;

.field public mAdjustImage:Landroid/widget/ImageView;

.field public mAdjustLayout:Landroid/widget/RelativeLayout;

.field public mAdjusted:Z

.field public mBackButton:Landroid/widget/ImageButton;

.field public mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

.field public mDeleteButton:Landroid/widget/ImageButton;

.field public final mDialogClickListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

.field public final mDialogDeleteListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

.field public mDocServiceMode:Z

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

.field public mInitFilter:I

.field public mInitRotate:F

.field public volatile mIsActivityRunning:Z

.field public mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

.field public mJpegLoadFinish:Z

.field public mLoadBitmapTaskStarted:Z

.field public mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

.field public mNavigationBarColor:I

.field public mProcessLayout:Landroid/widget/LinearLayout;

.field public mProcessTextView:Landroid/widget/TextView;

.field public final mReceiver:Lcom/motorola/camera/SecureCamera$1;

.field public mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

.field public mReviewLayout:Landroid/widget/RelativeLayout;

.field public mRotateButton:Landroid/widget/ImageButton;

.field public mSaveButton:Landroid/widget/Button;

.field public mSavedEdit:Z

.field public final mShadowRemovalRunnableMap:Ljava/util/HashMap;

.field public mState:I

.field public mStatusBarColor:I

.field public final mUiHandler:Landroid/os/Handler;

.field public originalURI:Landroid/net/Uri;


# direct methods
.method public static $r8$lambda$0JK9PlosVUjQtIhUFZYlY7c8pzY(Lcom/motorola/camera/editor/DocEditorActivity;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    const/4 p2, 0x3

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->initRectWithOriginalPoints()V

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    iput-boolean v0, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjusted:Z

    iput v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSavedEdit:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitRotate:F

    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->hasRotated:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mShadowRemovalRunnableMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mLoadBitmapTaskStarted:Z

    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;I)V

    iput-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogClickListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;I)V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogDeleteListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/SecureCamera$1;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/SecureCamera$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReceiver:Lcom/motorola/camera/SecureCamera$1;

    return-void
.end method

.method public static createBitmap(II[B)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p0
.end method


# virtual methods
.method public final clearShadowRemovalTasks()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mShadowRemovalRunnableMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shadow/ShadowRemovalRunnable;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/motorola/camera/shadow/ShadowRemovalRunnable;->mCancel:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mShadowRemovalRunnableMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public final hideSystemUi()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public final initRectWithOriginalPoints()V
    .locals 23

    move-object/from16 v0, p0

    const/16 v1, 0x8

    new-array v2, v1, [F

    iget-object v3, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v4, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    :cond_0
    const/4 v3, 0x0

    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v5, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegWidth:I

    iget v6, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegHeight:I

    iget v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v1, v1, [F

    iput-object v1, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mActivePoint:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct {v1, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    iget-object v1, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput v0, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mOrientation:F

    float-to-int v7, v0

    sget-object v8, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->TP_MAP:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->clear()V

    sget-object v9, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v10, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->BM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v11, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v12, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->TM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v13, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v14, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v15, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v3, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    const/16 v16, 0x1

    const/16 v17, 0x7

    move-object/from16 p0, v1

    const/16 v1, 0x5a

    const/16 v18, 0x6

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    if-eq v7, v1, :cond_4

    const/16 v1, 0xb4

    if-eq v7, v1, :cond_3

    const/16 v1, 0x10e

    if-eq v7, v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v7, v0, v3

    if-eqz v7, :cond_6

    const/high16 v7, 0x43870000    # 270.0f

    cmpl-float v7, v0, v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move v7, v1

    goto :goto_3

    :cond_6
    :goto_2
    move/from16 v7, v16

    :goto_3
    if-eqz v7, :cond_7

    move v8, v6

    goto :goto_4

    :cond_7
    move v8, v5

    :goto_4
    if-eqz v7, :cond_8

    move v7, v5

    goto :goto_5

    :cond_8
    move v7, v6

    :goto_5
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x0

    cmpl-float v10, v0, v9

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v10, :cond_9

    neg-int v13, v5

    int-to-float v13, v13

    div-float/2addr v13, v11

    neg-int v14, v6

    int-to-float v14, v14

    div-float/2addr v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v3

    const/high16 v3, 0x43340000    # 180.0f

    rem-float/2addr v0, v3

    cmpl-float v0, v0, v9

    if-nez v0, :cond_a

    move/from16 v3, v16

    goto :goto_6

    :cond_a
    move v3, v1

    :goto_6
    if-eqz v3, :cond_b

    move v0, v6

    goto :goto_7

    :cond_b
    move v0, v5

    :goto_7
    if-eqz v3, :cond_c

    goto :goto_8

    :cond_c
    move v5, v6

    :goto_8
    if-ne v0, v8, :cond_d

    if-eq v5, v7, :cond_e

    :cond_d
    int-to-float v1, v8

    int-to-float v0, v0

    div-float/2addr v1, v0

    int-to-float v0, v7

    int-to-float v3, v5

    div-float/2addr v0, v3

    invoke-virtual {v12, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_e
    if-eqz v10, :cond_f

    int-to-float v0, v8

    div-float/2addr v0, v11

    int-to-float v1, v7

    div-float/2addr v1, v11

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_f
    invoke-virtual {v12, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v1, p0

    if-eq v1, v0, :cond_10

    invoke-static {v1}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :cond_10
    new-instance v0, Landroid/util/Size;

    iget-object v1, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v4, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updatePoints([F)V

    return-void
.end method

.method public final declared-synchronized loadBitmap()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mLoadBitmapTaskStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mLoadBitmapTaskStarted:Z

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->switchUriFromGphoto(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/editor/load/LoadDocJpegTask;

    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    invoke-direct {v1, v0, v2, p0}, Lcom/motorola/camera/editor/load/LoadDocJpegTask;-><init>(Landroid/net/Uri;Landroid/net/Uri;Lcom/motorola/camera/editor/load/LoadDocJpegListener;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x65

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->saveDocument()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public final onBackInvoked()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->onBackPressed()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    iget-boolean v0, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mShadowRemovalRunnableMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->showExitDialog()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->clearShadowRemovalTasks()V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    iget-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->saveDocument()V

    goto/16 :goto_2

    :sswitch_1
    iget-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    iget-boolean v2, p1, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v3, v2, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v4, v3

    iput v4, v2, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    const/high16 v6, 0x43b40000    # 360.0f

    if-gez v5, :cond_3

    add-float/2addr v4, v6

    goto :goto_0

    :cond_3
    cmpl-float v5, v4, v6

    if-ltz v5, :cond_4

    sub-float/2addr v4, v6

    :goto_0
    iput v4, v2, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    :cond_4
    iget v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitRotate:F

    sget-boolean v4, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v4, p1, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsAfterReview:Z

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    sub-float/2addr v3, v2

    add-float/2addr v3, v6

    rem-float/2addr v3, v6

    :goto_1
    iput v3, p1, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    :cond_6
    iput v1, p1, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-boolean v1, p1, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v2, p1, v3}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Landroidx/work/impl/StartStopTokens;

    const-string v0, "ANALYTICS_DOC_EDITOR_ROTATE"

    invoke-virtual {p1, v0, v1}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->hasRotated:Z

    goto/16 :goto_2

    :sswitch_2
    iget-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    if-nez p1, :cond_7

    goto/16 :goto_2

    :cond_7
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Landroidx/work/impl/StartStopTokens;

    const-string v3, "ANALYTICS_DOC_EDITOR_EDGES"

    invoke-virtual {p1, v3, v1}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    iget-boolean v3, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->getAdjustedPoints()[F

    move-result-object p1

    iput-object p1, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object p1, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateAdjustBitmap([F)V

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    iput-boolean v2, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    iput-boolean v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjusted:Z

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/motorola/camera/Util;->recycleImageView(Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/motorola/camera/Util;->recycleImageView(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mInvertMatrix:Landroid/graphics/Matrix;

    iput-object v1, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    iput-object v1, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    iput-object v1, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    iput-object v1, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    iput-object v1, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mActivePoint:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->releaseResources()V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    goto :goto_2

    :sswitch_3
    iget-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12015f

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12015e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120161

    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogDeleteListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120160

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2

    :sswitch_4
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->onBackPressed()V

    goto :goto_2

    :sswitch_5
    iget-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0054 -> :sswitch_5
        0x7f0a008c -> :sswitch_4
        0x7f0a013d -> :sswitch_3
        0x7f0a0158 -> :sswitch_2
        0x7f0a034b -> :sswitch_1
        0x7f0a0351 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->registerReceiver(Z)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getStatusBarColor()I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mStatusBarColor:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mNavigationBarColor:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f06040b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/editor/DocEditorActivity;->hideSystemUi()V

    const v2, 0x7f0d005d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(I)V

    const v2, 0x7f0a008c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a013d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a032b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a032c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0345

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0344

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/editor/ui/ScaleImageView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    const v2, 0x7f0a01c3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/editor/ui/FilterButtonView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

    new-instance v3, Lcom/google/gson/FieldAttributes;

    const/16 v4, 0x10

    invoke-direct {v3, v1, v4}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v6, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, 0x2

    div-int/2addr v7, v10

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {v6, v11}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v11

    sub-int v11, v7, v11

    const/4 v12, -0x1

    invoke-direct {v9, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/high16 v8, 0x41700000    # 15.0f

    invoke-static {v6, v8}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v9

    invoke-static {}, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->values()[Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    move-result-object v11

    array-length v13, v11

    move v14, v5

    :goto_0
    if-ge v14, v13, :cond_1

    aget-object v15, v11, v14

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v8, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v8, 0x7f130223

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/high16 v8, 0x41700000    # 15.0f

    const/4 v10, 0x2

    invoke-virtual {v5, v10, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v10, v15, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mText:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v8, v15, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v8, 0x0

    invoke-virtual {v5, v9, v8, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v10, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v10, v8, v2, v3}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    const/high16 v8, 0x41700000    # 15.0f

    const/4 v10, 0x2

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v7, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v3, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/editor/ui/FilterButtonView;->setCenter(I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0351

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "DOCUMENT_SERVICE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    iget-object v3, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    const v2, 0x7f0a034b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    const v3, 0x7f08024f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0058

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    const v2, 0x7f0a0121

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/editor/ui/DocRectangleView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    const v2, 0x7f0a0059

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    iget-object v3, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->setDocAdjustListener(Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;)V

    const v2, 0x7f0a0158

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "EXTRA_DOCUMENT_CACHE_FILE_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "DocEditorActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "EXTRA_DOCUMENT_ORIGINAL_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    const-string v2, "_data"

    invoke-static {v0, v2}, Lcom/motorola/camera/Util;->getMediaDataFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ".pending"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    if-nez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_4

    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/editor/DocEditorActivity;->loadBitmap()V

    :cond_4
    :goto_4
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lkotlin/UInt$Companion;

    invoke-virtual {v0}, Lkotlin/UInt$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->registerCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 8

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->clearShadowRemovalTasks()V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    iput-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    iput-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    iput-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/motorola/camera/Util;->recycleImageView(Landroid/widget/ImageView;)V

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mInvertMatrix:Landroid/graphics/Matrix;

    iput-object v1, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    iput-object v1, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    iput-object v1, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    iput-object v1, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    iput-object v1, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mActivePoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->releaseResources()V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/motorola/camera/Util;->recycleImageView(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-static {v0}, Lcom/motorola/camera/Util;->recycleImageView(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    iget-boolean v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSavedEdit:Z

    iget-object v3, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Landroidx/work/impl/StartStopTokens;

    iget-object v4, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const-string v5, "SEQID"

    invoke-virtual {v4, v5}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v5}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostDocEditEvent:Lcom/motorola/camera/analytics/PostDocEditEvent;

    iget-object v0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    invoke-virtual {v2, v0, v3, v1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Landroidx/work/impl/StartStopTokens;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v3}, Landroidx/work/impl/StartStopTokens;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->registerReceiver(Z)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lkotlin/UInt$Companion;

    invoke-virtual {v0}, Lkotlin/UInt$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->unRegisterCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    iget v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mStatusBarColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mStatusBarColor:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_2
    iget v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mNavigationBarColor:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mNavigationBarColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    return-void
.end method

.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSavedEdit:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iput-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSavedEdit:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->hideSystemUi()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final registerReceiver(Z)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReceiver:Lcom/motorola/camera/SecureCamera$1;

    if-eqz p1, :cond_0

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "com.motorola.camera3.DOC_EDITOR_ACTION_RECEIVER"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    :goto_0
    return-void
.end method

.method public final saveDocument()V
    .locals 8

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-nez v1, :cond_0

    const-string p0, "SaveImageService"

    const-string v0, "saveDocument holder is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v2

    iget-object v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegUri:Landroid/net/Uri;

    const-string v3, "_display_name"

    invoke-static {v0, v3}, Lcom/motorola/camera/Util;->getMediaDataFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "URI"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "FILE_NAME"

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DATE_TYPE"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Lcom/motorola/camera/CameraData;

    invoke-direct {v4, v3}, Lcom/motorola/camera/CameraData;-><init>(Landroid/os/Bundle;)V

    sget-object v6, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance v7, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v3, v4

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/DocJpegHolder;ZLcom/motorola/camera/CameraData;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final showExitDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120168

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120167

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120162

    iget-object v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogClickListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120163

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public final switchUriFromGphoto(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.apps.photos.contentprovider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f120166

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/ORIGINAL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_2

    const-string p1, "/REQUIRE_ORIGINAL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    :cond_2
    if-lez p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object p1
.end method

.method public final updateAdjustBitmap([F)V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/16 v1, 0x8

    new-array v4, v1, [I

    const/4 v7, 0x0

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    float-to-int v3, v3

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object p1, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    array-length v1, p1

    invoke-static {p1, v7, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-static {p1}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v3, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegWidth:I

    iget v2, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegHeight:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v6, 0x0

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/mcf/DocUtil;->cropRgb([BII[I[IZ)[B

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x2

    aget v5, v0, v4

    invoke-static {v3, v5, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->createBitmap(II[B)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    sget-object v3, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    goto :goto_1

    :cond_1
    aget v1, v0, v2

    aget v3, v0, v4

    invoke-static {p1, v1, v3, v0, v7}, Lcom/motorola/camera/mcf/DocUtil;->enhanceRGB([BII[IZ)[B

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v1}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v2, v0, v2

    aget v0, v0, v4

    invoke-static {v2, v0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->createBitmap(II[B)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    goto :goto_2

    :cond_2
    aget v1, v0, v2

    aget v3, v0, v4

    invoke-static {p1, v1, v3, v0, v7}, Lcom/motorola/camera/mcf/DocUtil;->monoRGB([BII[IZ)[B

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v1}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v2, v0, v2

    aget v0, v0, v4

    invoke-static {v2, v0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->createBitmap(II[B)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    :goto_2
    return-void
.end method

.method public final updateSaveButtonEnableState()V
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjusted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    iget v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->hasRotated:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final updateViewForState$enumunboxing$(I)V
    .locals 6

    if-eqz p1, :cond_9

    add-int/lit8 v0, p1, -0x1

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget v0, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mOrientation:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->initRectWithOriginalPoints()V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    array-length v1, v0

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    invoke-static {v0, v1, v4, v4, v3}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->setupImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    iget v3, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    float-to-int v3, v3

    iget v4, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    sget-object v5, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;

    if-ne v4, v2, :cond_5

    iget-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_5
    const/4 v2, 0x3

    if-ne v4, v2, :cond_6

    iget-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/editor/ui/ScaleImageView;->setLastRotate(I)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_8
    :goto_4
    iput p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    return-void

    :cond_9
    const/4 p0, 0x0

    throw p0
.end method
