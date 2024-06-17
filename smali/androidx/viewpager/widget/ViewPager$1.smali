.class public final Landroidx/viewpager/widget/ViewPager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/viewpager/widget/ViewPager$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/view/View;Landroid/view/View;)I
    .locals 3

    iget p0, p0, Landroidx/viewpager/widget/ViewPager$1;->$r8$classId:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_2

    .line 1
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget-boolean p2, p0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    iget-boolean v2, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eq p2, v2, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    iget p1, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    sub-int v0, p0, p1

    :goto_0
    return v0

    .line 2
    :sswitch_1
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api21Impl;->getZ(Landroid/view/View;)F

    move-result p0

    invoke-static {p2}, Landroidx/core/view/ViewCompat$Api21Impl;->getZ(Landroid/view/View;)F

    move-result p1

    cmpl-float p2, p0, p1

    if-lez p2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 4
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Landroidx/viewpager/widget/ViewPager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 5
    :pswitch_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object p0

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/ResultKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    .line 6
    :pswitch_1
    check-cast p1, Lkotlin/reflect/KParameter;

    check-cast p1, Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getName()Ljava/lang/String;

    move-result-object p0

    check-cast p2, Lkotlin/reflect/KParameter;

    check-cast p2, Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/ResultKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    .line 7
    :pswitch_2
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/ResultKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    .line 8
    :pswitch_3
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    .line 9
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    mul-int/2addr p1, p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    mul-int/2addr p2, p0

    sub-int/2addr p1, p2

    return p1

    .line 10
    :pswitch_4
    check-cast p1, Lkotlin/Pair;

    .line 11
    iget-object p0, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 12
    check-cast p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;

    .line 13
    iget-wide p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    .line 14
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p2, Lkotlin/Pair;

    .line 15
    iget-object p1, p2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 16
    check-cast p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;

    .line 17
    iget-wide p1, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/ResultKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    .line 19
    :pswitch_5
    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/motorola/camera/background/common/TaskId;->priority:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    check-cast p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    if-eqz p2, :cond_1

    iget p0, p2, Lcom/motorola/camera/background/common/TaskId;->priority:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_1
    invoke-static {p1, p0}, Lkotlin/ResultKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    .line 20
    :pswitch_6
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    .line 21
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 22
    :pswitch_7
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$1;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0

    .line 23
    :pswitch_8
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p0

    neg-int p0, p0

    return p0

    .line 25
    :pswitch_9
    check-cast p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    check-cast p2, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 26
    iget-short p0, p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S

    iget-short p1, p2, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S

    sub-int/2addr p0, p1

    return p0

    .line 27
    :pswitch_a
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$1;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0

    .line 28
    :pswitch_b
    check-cast p1, Landroidx/recyclerview/widget/GapWorker$Task;

    check-cast p2, Landroidx/recyclerview/widget/GapWorker$Task;

    .line 29
    iget-object p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iget-object v3, p2, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    if-eq v2, v3, :cond_4

    if-nez p0, :cond_5

    goto :goto_3

    :cond_4
    iget-boolean p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    iget-boolean v2, p2, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eq p0, v2, :cond_7

    if-eqz p0, :cond_6

    :cond_5
    const/4 v0, -0x1

    goto :goto_5

    :cond_6
    :goto_3
    move v0, v1

    goto :goto_5

    :cond_7
    iget p0, p2, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    iget v1, p1, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    sub-int/2addr p0, v1

    if-eqz p0, :cond_8

    :goto_4
    move v0, p0

    goto :goto_5

    :cond_8
    iget p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    iget p1, p2, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    sub-int/2addr p0, p1

    if-eqz p0, :cond_9

    goto :goto_4

    :cond_9
    :goto_5
    return v0

    .line 30
    :pswitch_c
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 31
    iget p0, p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget p1, p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    sub-int/2addr p0, p1

    return p0

    .line 32
    :pswitch_d
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$1;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0

    .line 33
    :pswitch_e
    check-cast p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    check-cast p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 34
    iget p0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget p1, p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    sub-int/2addr p0, p1

    return p0

    .line 35
    :goto_6
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object p0

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/ResultKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
