.class public final Lcom/motorola/camera/saving/XmpData$GDepth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public mData:Ljava/lang/Object;

.field public mFar:I

.field public mNear:I

.field public mRoi:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/saving/XmpData$GDepth;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    iput-object p2, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    iput p3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->State:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    if-nez v2, :cond_0

    iget v3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    const-string v3, "layout"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    iget v3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;ILandroid/view/View;I)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    iput-object p3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    iput p4, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;Landroidx/appcompat/widget/TintTypedArray;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    const/16 p1, 0x1a

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    const/16 p1, 0x32

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/mcf/McfAuxFrameData;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getData()[B

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    const/16 p1, 0xff

    iput p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/saving/XmpData$GDepth;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-object v0, p1, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    .line 13
    move-object v1, v0

    check-cast v1, [F

    array-length v1, v1

    div-int/lit8 v1, v1, 0x3

    .line 14
    iput v1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    check-cast v0, [F

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    iget-object v0, p1, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    iget p1, p1, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    goto :goto_1

    :cond_0
    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    iput p3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([F[FII)V
    .locals 6

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    array-length p3, p1

    int-to-long v0, p3

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    array-length p3, p2

    int-to-long v2, p3

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    iput p4, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized add(JLjava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v1, v0

    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, v1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/saving/XmpData$GDepth;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/saving/XmpData$GDepth;->doubleCapacityIfFull()V

    iget v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    iget v1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    rem-int/2addr v0, v3

    iget-object v3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast v3, [J

    aput-wide p1, v3, v0

    check-cast v2, [Ljava/lang/Object;

    aput-object p3, v2, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    iput v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final doubleCapacityIfFull()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    if-ge v1, v0, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    new-array v2, v1, [J

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    sub-int/2addr v0, v3

    iget-object v4, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast v4, [J

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    if-lez v3, :cond_1

    iget-object v4, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast v4, [J

    invoke-static {v4, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    iput-object v1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    iput v5, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    const/4 p1, 0x7

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    iget v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, p1, p0}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method

.method public final onSeekFinished()V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    return-void
.end method

.method public final poll(JZ)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    iget v3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast v3, [J

    iget v4, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    aget-wide v3, v3, v4

    sub-long v3, p1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    if-nez p3, :cond_1

    neg-long v5, v3

    cmp-long v1, v5, v1

    if-ltz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/saving/XmpData$GDepth;->popFirst()Ljava/lang/Object;

    move-result-object v0

    move-wide v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public final popFirst()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    aget-object v2, v2, v3

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    add-int/2addr v3, v1

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v3, v0

    iput v3, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    iget v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    return-object v2
.end method

.method public final searchForTimestamp(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/appcompat/app/TwilightCalculator;
    .locals 17

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget v1, v0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    int-to-long v1, v1

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, v0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v2, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v5, 0x0

    move-object/from16 v6, p1

    invoke-interface {v6, v5, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    iget-object v1, v0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/ParsableByteArray;

    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    const-wide/16 v5, -0x1

    move-wide v9, v5

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iget v11, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v14, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v11, v14

    const/16 v15, 0xbc

    if-lt v11, v15, :cond_6

    iget-object v11, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    :goto_1
    if-ge v14, v2, :cond_0

    aget-byte v15, v11, v14

    const/16 v7, 0x47

    if-eq v15, v7, :cond_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    add-int/lit16 v7, v14, 0xbc

    if-le v7, v2, :cond_1

    goto :goto_2

    :cond_1
    iget v5, v0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    invoke-static {v14, v5, v1}, L_COROUTINE/_BOUNDARY;->readPcrFromPacket(IILandroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v5

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v5, v15

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v8, v5, v6}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v5

    cmp-long v8, v5, p2

    if-lez v8, :cond_3

    cmp-long v0, v12, v15

    if-nez v0, :cond_2

    new-instance v7, Landroidx/appcompat/app/TwilightCalculator;

    const/4 v8, -0x1

    move-object v0, v7

    move-wide v1, v5

    move v5, v8

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/app/TwilightCalculator;-><init>(JJI)V

    goto :goto_3

    :cond_2
    add-long/2addr v3, v9

    invoke-static {v3, v4}, Landroidx/appcompat/app/TwilightCalculator;->targetFoundResult(J)Landroidx/appcompat/app/TwilightCalculator;

    move-result-object v7

    goto :goto_3

    :cond_3
    const-wide/32 v8, 0x186a0

    add-long/2addr v8, v5

    cmp-long v8, v8, p2

    if-lez v8, :cond_4

    int-to-long v0, v14

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Landroidx/appcompat/app/TwilightCalculator;->targetFoundResult(J)Landroidx/appcompat/app/TwilightCalculator;

    move-result-object v7

    goto :goto_3

    :cond_4
    int-to-long v8, v14

    move-wide v12, v5

    move-wide v9, v8

    :cond_5
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    int-to-long v5, v7

    goto :goto_0

    :cond_6
    :goto_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v12, v0

    if-eqz v0, :cond_7

    add-long v14, v3, v5

    new-instance v7, Landroidx/appcompat/app/TwilightCalculator;

    const/16 v16, -0x2

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Landroidx/appcompat/app/TwilightCalculator;-><init>(JJI)V

    goto :goto_3

    :cond_7
    sget-object v7, Landroidx/appcompat/app/TwilightCalculator;->NO_TIMESTAMP_IN_RANGE_RESULT:Landroidx/appcompat/app/TwilightCalculator;

    :goto_3
    return-object v7
.end method
