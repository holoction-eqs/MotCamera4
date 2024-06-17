.class public Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field public mIsEnableAutoSize:Z

.field public mIsInAutoSizeMode:Z

.field public mMaxHeightInPx:F

.field public mMaxTextSizeInPx:F

.field public mMinTextSizeInPx:F

.field public mStepGranularityInPx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mIsEnableAutoSize:Z

    iput-boolean p1, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mIsInAutoSizeMode:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/motorola/tools/myui/R$styleable;->MyUIAutoSizeTextView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mMinTextSizeInPx:F

    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mMaxTextSizeInPx:F

    const/4 v2, 0x3

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mStepGranularityInPx:F

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mMaxHeightInPx:F

    iget v1, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mMinTextSizeInPx:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mMaxTextSizeInPx:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mStepGranularityInPx:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_0

    iput-boolean v0, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mIsEnableAutoSize:Z

    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, " resource not found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "0x%x"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget p2, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mMaxHeightInPx:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p2, v2

    float-to-int p2, p2

    iget-boolean v3, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mIsEnableAutoSize:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v3, p2, :cond_2

    iget-boolean v3, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mIsInAutoSizeMode:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mIsInAutoSizeMode:Z

    iget v3, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mMinTextSizeInPx:F

    add-float/2addr v3, v2

    float-to-int v3, v3

    iget v4, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mMaxTextSizeInPx:F

    add-float/2addr v4, v2

    float-to-int v4, v4

    iget v5, p0, Lcom/motorola/tools/myui/textview/MyUIAutoSizeTextView;->mStepGranularityInPx:F

    add-float/2addr v5, v2

    float-to-int v2, v5

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_1

    const/high16 v0, -0x80000000

    :cond_1
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    return-void
.end method
