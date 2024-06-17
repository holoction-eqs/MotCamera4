.class public final Lcom/google/common/base/Splitter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroidx/media3/exoplayer/source/SequenceableLoader;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;
.implements Landroidx/arch/core/util/Function;
.implements Lcom/google/android/play/core/appupdate/internal/zzaf;


# instance fields
.field public final synthetic $r8$classId:I

.field public val$separatorMatcher:Ljava/lang/Object;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lcom/google/common/base/Splitter$1;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/google/common/base/Splitter$1;->$r8$classId:I

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;

    invoke-direct {p1}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/16 v0, 0xf

    iput v0, p0, Lcom/google/common/base/Splitter$1;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    sget-object v0, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;->Companion:Lkotlin/UInt$Companion;

    .line 5
    sget-object v1, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;->INSTANCE:Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;

    if-nez v1, :cond_1

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;->INSTANCE:Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context.applicationContext"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;

    const-string v2, "transaction_table.db"

    invoke-static {p1, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p1, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 10
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;

    .line 11
    sput-object p1, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;->INSTANCE:Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    .line 12
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;->transactionDao()Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;)V
    .locals 0

    const/16 p1, 0xc

    iput p1, p0, Lcom/google/common/base/Splitter$1;->$r8$classId:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Joiner;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Lcom/google/common/base/Splitter$1;->$r8$classId:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/base/Splitter$1$$ExternalSynthetic$IA0;)V
    .locals 0

    .line 16
    const/16 p1, 0x10

    iput p1, p0, Lcom/google/common/base/Splitter$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/google/common/base/Splitter$1;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/GestureRecognizer;)V
    .locals 1

    .line 17
    const/16 v0, 0x11

    iput v0, p0, Lcom/google/common/base/Splitter$1;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/Splitter$1;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 18
    iput p2, p0, Lcom/google/common/base/Splitter$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, [B

    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lokio/SegmentPool;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableResult;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/RemoteListenableWorker;->TAG:Ljava/lang/String;

    const-string v2, "Cleaning up"

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Landroidx/work/multiprocess/RemoteListenableWorker;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mClient:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    iget-object v0, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient;->mConnection:Landroidx/work/multiprocess/ListenableWorkerImplClient$Connection;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient;->mConnection:Landroidx/work/multiprocess/ListenableWorkerImplClient$Connection;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p1, Landroidx/work/multiprocess/parcelable/ParcelableResult;->mResult:Landroidx/work/ListenableWorker$Result;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final centerX()F
    .locals 0

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    return p0
.end method

.method public final centerY()F
    .locals 0

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    return p0
.end method

.method public final contains(FF)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move-object v1, p0

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move-object v1, p0

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    move-object p1, p0

    check-cast p1, Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    check-cast p0, Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final contains(FFFFLandroid/graphics/PointF;)Z
    .locals 2

    .line 2
    iget v0, p5, Landroid/graphics/PointF;->x:F

    iget v1, p5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    iget p1, p5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p5, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, p2

    iget p2, p5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p5, Landroid/graphics/PointF;->x:F

    iget p2, p5, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p5, Landroid/graphics/PointF;->x:F

    iget p2, p5, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, p4

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final continueLoading(J)Z
    .locals 17

    move-wide/from16 v0, p1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/base/Splitter$1;->getNextLoadPositionUs()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v9, [Landroidx/media3/exoplayer/source/SequenceableLoader;

    array-length v10, v9

    move v11, v2

    move v12, v11

    :goto_0
    if-ge v11, v10, :cond_5

    aget-object v13, v9, v11

    invoke-interface {v13}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v14

    cmp-long v16, v14, v6

    if-eqz v16, :cond_2

    cmp-long v16, v14, v0

    if-gtz v16, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v2

    :goto_1
    cmp-long v14, v14, v4

    if-eqz v14, :cond_3

    if-eqz v16, :cond_4

    :cond_3
    invoke-interface {v13, v0, v1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->continueLoading(J)Z

    move-result v13

    or-int/2addr v12, v13

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    or-int/2addr v3, v12

    if-nez v12, :cond_0

    :goto_2
    return v3
.end method

.method public final enhance(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;ZLcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;

    invoke-direct {v0, p2, p3, p4, p5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;ZLcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;)V

    invoke-interface {p8, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object p1

    const-string p3, "overriddenDescriptors"

    invoke-static {p1, p3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p1, p4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    const-string p5, "it"

    invoke-static {p4, p5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p8, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, v0

    move-object p4, p6

    move p5, p7

    invoke-virtual/range {p0 .. p5}, Lcom/google/common/base/Splitter$1;->enhance(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0
.end method

.method public final enhance(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 31

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/base/Joiner;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Iterable;

    const-string v4, "<this>"

    .line 2
    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->toIndexed(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-virtual {v0, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->toIndexed(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    iget-object v8, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->containerContext:Lcom/airbnb/lottie/parser/DropShadowEffect;

    iget-boolean v10, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->isCovariant:Z

    if-eqz v10, :cond_4

    instance-of v11, v3, Ljava/util/Collection;

    if-eqz v11, :cond_1

    move-object v11, v3

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    const-string v12, "other"

    .line 3
    invoke-static {v11, v12}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v12, v8, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 5
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 6
    iget-object v12, v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->kotlinTypeChecker:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 7
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    invoke-virtual {v12, v1, v11}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->equalTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v11

    xor-int/2addr v11, v7

    if-eqz v11, :cond_2

    move v3, v7

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    move v3, v7

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    move v3, v7

    goto :goto_4

    .line 8
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4
    new-array v11, v3, [Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v3, :cond_53

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    .line 9
    iget-object v14, v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->type:Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 10
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    sget-object v6, Lkotlinx/coroutines/CoroutineId$Key;->INSTANCE$6:Lkotlinx/coroutines/CoroutineId$Key;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    move/from16 v16, v3

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    const/16 v17, 0x0

    move-object/from16 v18, v4

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->typeContainer:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;

    move-object/from16 v19, v2

    iget-object v2, v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->typeParameterForArgument:Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;

    if-nez v14, :cond_8

    if-eqz v2, :cond_7

    .line 11
    instance-of v14, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v14, :cond_6

    move-object v14, v2

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v14

    move-object/from16 v20, v11

    const-string v11, "this.variance"

    invoke-static {v14, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lkotlin/text/RegexKt;->convertVariance(Lkotlin/reflect/jvm/internal/impl/types/Variance;)I

    move-result v11

    goto :goto_6

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassicTypeSystemContext couldn\'t handle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object/from16 v20, v11

    const/4 v11, 0x0

    :goto_6
    const/4 v14, 0x1

    if-ne v11, v14, :cond_9

    .line 12
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->NONE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    move-object/from16 v22, v1

    move-object/from16 v26, v4

    move-object/from16 v27, v6

    move-object/from16 v23, v7

    move-object/from16 v21, v8

    move/from16 v24, v10

    goto/16 :goto_16

    :cond_8
    move-object/from16 v20, v11

    :cond_9
    if-nez v2, :cond_a

    const/4 v11, 0x1

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    :goto_7
    sget-object v14, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object/from16 v21, v14

    iget-object v14, v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->type:Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    if-eqz v14, :cond_b

    .line 13
    move-object/from16 v22, v14

    check-cast v22, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual/range {v22 .. v22}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v22

    move-object/from16 v30, v22

    move-object/from16 v22, v1

    move-object/from16 v1, v30

    goto :goto_8

    :cond_b
    move-object/from16 v22, v1

    move-object/from16 v1, v21

    :goto_8
    if-eqz v14, :cond_c

    .line 14
    invoke-virtual {v6, v14}, Lkotlinx/coroutines/CoroutineId$Key;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 15
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->getTypeParameterClassifier(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v14

    move-object/from16 v23, v7

    goto :goto_9

    :cond_c
    move-object/from16 v23, v7

    move-object/from16 v14, v17

    .line 16
    :goto_9
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_PARAMETER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    move/from16 v24, v10

    iget-object v10, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->containerApplicabilityType:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    if-ne v10, v7, :cond_d

    const/4 v7, 0x1

    goto :goto_a

    :cond_d
    const/4 v7, 0x0

    :goto_a
    move-object/from16 v25, v10

    if-nez v11, :cond_e

    goto :goto_c

    :cond_e
    if-nez v7, :cond_f

    .line 17
    iget-object v10, v8, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 18
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 19
    iget-object v10, v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->settings:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;

    .line 20
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_f
    if-eqz v4, :cond_10

    .line 21
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v10

    if-eqz v10, :cond_10

    goto :goto_b

    :cond_10
    move-object/from16 v10, v21

    .line 22
    :goto_b
    invoke-static {v10, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 23
    :goto_c
    iget-object v10, v8, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 24
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 25
    iget-object v10, v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 26
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v26, v4

    move-object/from16 v4, v17

    :goto_d
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_14

    move-object/from16 v27, v6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v10, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->getFqName(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v6

    move-object/from16 v28, v10

    .line 28
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->READ_ONLY_ANNOTATIONS:Ljava/util/Set;

    .line 29
    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    move-object/from16 v6, v22

    goto :goto_e

    .line 30
    :cond_11
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->MUTABLE_ANNOTATIONS:Ljava/util/Set;

    .line 31
    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move-object/from16 v6, v23

    :goto_e
    if-eqz v4, :cond_12

    if-eq v4, v6, :cond_12

    move-object/from16 v4, v17

    goto :goto_f

    :cond_12
    move-object v4, v6

    :cond_13
    move-object/from16 v6, v27

    move-object/from16 v10, v28

    goto :goto_d

    :cond_14
    move-object/from16 v27, v6

    .line 32
    :goto_f
    iget-object v6, v8, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 33
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 34
    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 35
    new-instance v10, Landroidx/lifecycle/Transformations$map$1;

    move-object/from16 v21, v8

    const/16 v8, 0xa

    invoke-direct {v10, v8, v0, v13}, Landroidx/lifecycle/Transformations$map$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v8, v17

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/AbstractAnnotationTypeQualifierResolver;->extractNullability(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    move-result-object v0

    if-nez v8, :cond_15

    move-object/from16 v28, v1

    move-object/from16 v29, v6

    goto :goto_11

    :cond_15
    if-eqz v0, :cond_19

    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    goto :goto_12

    :cond_16
    move-object/from16 v28, v1

    iget-boolean v1, v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    move-object/from16 v29, v6

    iget-boolean v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    if-eqz v6, :cond_17

    if-nez v1, :cond_17

    goto :goto_13

    :cond_17
    if-nez v6, :cond_18

    if-eqz v1, :cond_18

    :goto_11
    move-object v8, v0

    goto :goto_13

    :cond_18
    move-object/from16 v8, v17

    goto :goto_14

    :cond_19
    :goto_12
    move-object/from16 v28, v1

    move-object/from16 v29, v6

    :goto_13
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v6, v29

    goto :goto_10

    :cond_1a
    :goto_14
    if-eqz v8, :cond_1c

    .line 37
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    iget-object v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-ne v0, v9, :cond_1b

    if-eqz v14, :cond_1b

    const/4 v1, 0x1

    goto :goto_15

    :cond_1b
    const/4 v1, 0x0

    :goto_15
    iget-boolean v6, v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    invoke-direct {v2, v0, v4, v1, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZ)V

    :goto_16
    const/4 v6, 0x1

    goto/16 :goto_25

    :cond_1c
    if-nez v11, :cond_1e

    if-eqz v7, :cond_1d

    goto :goto_17

    :cond_1d
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_USE:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    goto :goto_18

    :cond_1e
    :goto_17
    move-object/from16 v10, v25

    :goto_18
    iget-object v0, v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->defaultQualifiers:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    if-eqz v0, :cond_1f

    .line 38
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;->defaultQualifiers:Ljava/util/EnumMap;

    invoke-virtual {v0, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDefaultQualifiers;

    goto :goto_19

    :cond_1f
    move-object/from16 v0, v17

    :goto_19
    if-eqz v14, :cond_20

    .line 39
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->getBoundsNullability(Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    move-result-object v1

    goto :goto_1a

    :cond_20
    move-object/from16 v1, v17

    :goto_1a
    const/4 v6, 0x2

    if-eqz v1, :cond_21

    const/4 v7, 0x0

    invoke-static {v1, v9, v7, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;ZI)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    move-result-object v8

    goto :goto_1b

    :cond_21
    if-eqz v0, :cond_22

    iget-object v8, v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDefaultQualifiers;->nullabilityQualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    goto :goto_1b

    :cond_22
    move-object/from16 v8, v17

    :goto_1b
    if-eqz v1, :cond_23

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    goto :goto_1c

    :cond_23
    move-object/from16 v1, v17

    :goto_1c
    if-eq v1, v9, :cond_26

    if-eqz v14, :cond_25

    if-eqz v0, :cond_24

    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDefaultQualifiers;->definitelyNotNull:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    const/4 v0, 0x1

    goto :goto_1d

    :cond_24
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_25

    goto :goto_1e

    :cond_25
    const/4 v14, 0x0

    goto :goto_1f

    :cond_26
    :goto_1e
    const/4 v14, 0x1

    :goto_1f
    if-eqz v2, :cond_27

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->getBoundsNullability(Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-ne v1, v15, :cond_28

    const/4 v1, 0x0

    invoke-static {v0, v3, v1, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;ZI)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    move-result-object v0

    goto :goto_20

    :cond_27
    move-object/from16 v0, v17

    :cond_28
    :goto_20
    if-nez v0, :cond_29

    goto :goto_22

    :cond_29
    if-nez v8, :cond_2a

    goto :goto_21

    .line 40
    :cond_2a
    iget-boolean v1, v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    iget-boolean v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    if-eqz v2, :cond_2b

    if-nez v1, :cond_2b

    goto :goto_22

    :cond_2b
    if-nez v2, :cond_2c

    if-eqz v1, :cond_2c

    goto :goto_21

    :cond_2c
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    iget-object v2, v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-gez v6, :cond_2d

    goto :goto_22

    :cond_2d
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_2e

    :goto_21
    move-object v8, v0

    .line 41
    :cond_2e
    :goto_22
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    if-eqz v8, :cond_2f

    iget-object v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    goto :goto_23

    :cond_2f
    move-object/from16 v0, v17

    :goto_23
    if-eqz v8, :cond_30

    iget-boolean v1, v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    const/4 v6, 0x1

    if-ne v1, v6, :cond_31

    move v1, v6

    goto :goto_24

    :cond_30
    const/4 v6, 0x1

    :cond_31
    const/4 v1, 0x0

    :goto_24
    invoke-direct {v2, v0, v4, v14, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZ)V

    .line 42
    :goto_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v12, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    if-eqz v4, :cond_39

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->type:Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    if-eqz v4, :cond_39

    .line 43
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->getNullabilityQualifier(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    move-result-object v7

    if-nez v7, :cond_33

    .line 44
    move-object v8, v4

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v8}, Lkotlin/reflect/jvm/KCallablesJvm;->getEnhancement(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v8

    if-eqz v8, :cond_32

    .line 45
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->getNullabilityQualifier(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    move-result-object v8

    goto :goto_27

    :cond_32
    move-object/from16 v8, v17

    goto :goto_27

    :cond_33
    move-object v8, v7

    :goto_27
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    move-object/from16 v10, v27

    invoke-virtual {v10, v4}, Lkotlinx/coroutines/CoroutineId$Key;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v11

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->getFqNameUnsafe(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v11

    .line 46
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->readOnlyToMutable:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_34

    move-object/from16 v11, v22

    goto :goto_28

    .line 47
    :cond_34
    invoke-virtual {v10, v4}, Lkotlinx/coroutines/CoroutineId$Key;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v11

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->getFqNameUnsafe(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v11

    .line 48
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mutableToReadOnly:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_35

    move-object/from16 v11, v23

    goto :goto_28

    :cond_35
    move-object/from16 v11, v17

    .line 49
    :goto_28
    invoke-virtual {v10, v4}, Lkotlinx/coroutines/CoroutineId$Key;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v13

    if-nez v13, :cond_37

    .line 50
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v4

    instance-of v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NotNullTypeParameterImpl;

    if-eqz v4, :cond_36

    goto :goto_29

    :cond_36
    const/4 v14, 0x0

    goto :goto_2a

    :cond_37
    :goto_29
    move v14, v6

    .line 51
    :goto_2a
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    if-eq v8, v7, :cond_38

    move v7, v6

    goto :goto_2b

    :cond_38
    const/4 v7, 0x0

    :goto_2b
    invoke-direct {v4, v8, v11, v14, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZ)V

    goto :goto_2c

    :cond_39
    move-object/from16 v10, v27

    move-object/from16 v4, v17

    :goto_2c
    if-eqz v4, :cond_3a

    .line 52
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    move-object/from16 v27, v10

    goto/16 :goto_26

    :cond_3b
    if-nez v12, :cond_3c

    if-eqz v24, :cond_3c

    move v14, v6

    goto :goto_2d

    :cond_3c
    const/4 v14, 0x0

    :goto_2d
    if-nez v12, :cond_3e

    move-object/from16 v1, v26

    .line 53
    instance-of v4, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    if-eqz v4, :cond_3d

    move-object v4, v1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 54
    iget-object v1, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->varargElementType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v1, :cond_3d

    move v1, v6

    goto :goto_2e

    :cond_3d
    const/4 v1, 0x0

    :goto_2e
    if-eqz v1, :cond_3e

    move v1, v6

    goto :goto_2f

    :cond_3e
    const/4 v1, 0x0

    .line 55
    :goto_2f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3f
    :goto_30
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_41

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 56
    iget-boolean v10, v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->isNullabilityQualifierForWarning:Z

    if-eqz v10, :cond_40

    move-object/from16 v8, v17

    goto :goto_31

    .line 57
    :cond_40
    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    :goto_31
    if-eqz v8, :cond_3f

    .line 58
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_41
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 59
    iget-boolean v7, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->isNullabilityQualifierForWarning:Z

    iget-object v8, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-eqz v7, :cond_42

    move-object/from16 v7, v17

    goto :goto_32

    :cond_42
    move-object v7, v8

    :goto_32
    if-ne v7, v3, :cond_43

    move-object v4, v3

    goto :goto_33

    .line 60
    :cond_43
    invoke-static {v4, v9, v15, v7, v14}, Lkotlin/text/RegexKt;->select(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    :goto_33
    if-nez v4, :cond_47

    .line 61
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_44
    :goto_34
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_45

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 62
    iget-object v11, v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-eqz v11, :cond_44

    .line 63
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_45
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    if-ne v8, v3, :cond_46

    goto :goto_35

    .line 64
    :cond_46
    invoke-static {v7, v9, v15, v8, v14}, Lkotlin/text/RegexKt;->select(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    goto :goto_35

    :cond_47
    move-object v3, v4

    .line 65
    :goto_35
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_48
    :goto_36
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_49

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 66
    iget-object v10, v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->mutability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    if-eqz v10, :cond_48

    .line 67
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_49
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    iget-object v8, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->mutability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    move-object/from16 v11, v22

    move-object/from16 v10, v23

    invoke-static {v7, v10, v11, v8, v14}, Lkotlin/text/RegexKt;->select(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    if-eqz v3, :cond_4c

    if-nez p5, :cond_4b

    if-eqz v1, :cond_4a

    if-ne v3, v15, :cond_4a

    goto :goto_37

    :cond_4a
    const/4 v14, 0x0

    goto :goto_38

    :cond_4b
    :goto_37
    move v14, v6

    :goto_38
    if-nez v14, :cond_4c

    move-object v1, v3

    goto :goto_39

    :cond_4c
    move-object/from16 v1, v17

    :goto_39
    if-ne v1, v9, :cond_51

    iget-boolean v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->definitelyNotNull:Z

    if-nez v2, :cond_50

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4d

    goto :goto_3a

    :cond_4d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 68
    iget-boolean v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->definitelyNotNull:Z

    if-eqz v2, :cond_4e

    move v14, v6

    goto :goto_3b

    :cond_4f
    :goto_3a
    const/4 v14, 0x0

    :goto_3b
    if-eqz v14, :cond_51

    :cond_50
    move v14, v6

    goto :goto_3c

    :cond_51
    const/4 v14, 0x0

    :goto_3c
    if-eqz v1, :cond_52

    if-eq v4, v3, :cond_52

    move v0, v6

    goto :goto_3d

    :cond_52
    const/4 v0, 0x0

    .line 69
    :goto_3d
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    invoke-direct {v2, v1, v7, v14, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZ)V

    .line 70
    aput-object v2, v20, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move v7, v6

    move/from16 v3, v16

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    move-object/from16 v11, v20

    move-object/from16 v8, v21

    move/from16 v10, v24

    const/16 v6, 0xa

    goto/16 :goto_5

    :cond_53
    move-object/from16 v19, v2

    move-object/from16 v20, v11

    new-instance v0, Landroidx/lifecycle/Transformations$map$1;

    const/16 v1, 0x9

    move-object/from16 v2, p4

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroidx/lifecycle/Transformations$map$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 71
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-virtual/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    move-object/from16 v2, p1

    iget-boolean v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->skipRawTypeArguments:Z

    move-object/from16 v3, v19

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v4, v2}, Lcom/google/common/base/Joiner;->enhancePossiblyFlexible(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Landroidx/lifecycle/Transformations$map$1;IZ)Lcom/adobe/xmp/impl/ParseState;

    move-result-object v0

    .line 73
    iget-object v0, v0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v0
.end method

.method public final enhanceSignatures(Lcom/airbnb/lottie/parser/DropShadowEffect;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 24

    move-object/from16 v0, p1

    const-string v1, "c"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, v4

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    const/4 v14, 0x1

    if-ne v6, v7, :cond_1

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v5, v14, :cond_1

    :goto_1
    move v7, v3

    goto/16 :goto_28

    :cond_1
    invoke-static {v4}, Lkotlinx/coroutines/DelayKt;->getTopLevelContainingClassifier(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v5

    const/4 v15, 0x0

    const/4 v13, 0x0

    if-nez v5, :cond_2

    goto :goto_6

    :cond_2
    instance-of v6, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    if-eqz v6, :cond_3

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    goto :goto_2

    :cond_3
    move-object v5, v13

    :goto_2
    if-eqz v5, :cond_4

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->moduleAnnotations$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    goto :goto_3

    :cond_4
    move-object v5, v13

    :goto_3
    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    move v6, v15

    goto :goto_5

    :cond_6
    :goto_4
    move v6, v14

    :goto_5
    if-eqz v6, :cond_7

    :goto_6
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v5

    goto :goto_8

    :cond_7
    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation;

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    invoke-direct {v8, v0, v7, v14}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation;Z)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v5, Lkotlin/UInt$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    goto :goto_8

    :cond_9
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    invoke-direct {v6, v15, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(ILjava/util/List;)V

    move-object v5, v6

    :goto_8
    invoke-static {v0, v5}, Lkotlin/text/UStringsKt;->copyWithNewDefaultTypeQualifiers(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lcom/airbnb/lottie/parser/DropShadowEffect;

    move-result-object v12

    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;

    if-eqz v5, :cond_b

    move-object v5, v4

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    if-eqz v5, :cond_a

    iget-boolean v6, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;->isDefault:Z

    if-nez v6, :cond_a

    move v6, v14

    goto :goto_9

    :cond_a
    move v6, v15

    :goto_9
    if-eqz v6, :cond_b

    invoke-static {v5}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v5

    goto :goto_a

    :cond_b
    move-object v11, v4

    :goto_a
    move-object v10, v4

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;

    move-result-object v5

    sget-object v16, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    if-eqz v5, :cond_f

    instance-of v5, v11, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    if-eqz v5, :cond_c

    move-object v5, v11

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    goto :goto_b

    :cond_c
    move-object v5, v13

    :goto_b
    if-eqz v5, :cond_d

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;->ORIGINAL_VALUE_PARAMETER_FOR_EXTENSION_RECEIVER:Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$1;

    invoke-interface {v5, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getUserData(Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    move-object v7, v5

    goto :goto_c

    :cond_d
    move-object v7, v13

    :goto_c
    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v19, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$receiverTypeEnhancement$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$receiverTypeEnhancement$1;

    const/4 v8, 0x0

    if-eqz v7, :cond_e

    move-object v5, v7

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v5

    invoke-static {v12, v5}, Lkotlin/text/UStringsKt;->copyWithNewDefaultTypeQualifiers(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lcom/airbnb/lottie/parser/DropShadowEffect;

    move-result-object v5

    move-object v9, v5

    goto :goto_d

    :cond_e
    move-object v9, v12

    :goto_d
    move-object/from16 v5, p0

    move-object v6, v4

    move-object/from16 p2, v10

    move-object/from16 v10, v16

    move-object/from16 v20, v11

    move-object/from16 v11, v17

    move-object v15, v12

    move/from16 v12, v18

    move-object/from16 v13, v19

    invoke-virtual/range {v5 .. v13}, Lcom/google/common/base/Splitter$1;->enhance(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;ZLcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v13

    move-object/from16 v18, v13

    goto :goto_e

    :cond_f
    move-object/from16 p2, v10

    move-object/from16 v20, v11

    move-object v15, v12

    const/16 v18, 0x0

    :goto_e
    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    if-eqz v5, :cond_10

    move-object v13, v4

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    goto :goto_f

    :cond_10
    const/4 v13, 0x0

    :goto_f
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    const/4 v6, 0x3

    invoke-static {v13, v6}, Lkotlin/reflect/jvm/KCallablesJvm;->computeJvmDescriptor$default(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlinx/coroutines/DelayKt;->signature(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE:Ljava/util/AbstractMap;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;

    goto :goto_10

    :cond_11
    const/4 v13, 0x0

    :goto_10
    if-eqz v13, :cond_12

    iget-object v5, v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;->parametersInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    :cond_12
    iget-object v5, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaTypeEnhancementState:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    const-string v6, "javaTypeEnhancementState"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationSettingsKt;->JSPECIFY_ANNOTATIONS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;->getReportLevelForAnnotation:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->STRICT:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    if-ne v5, v6, :cond_13

    move v5, v14

    goto :goto_11

    :cond_13
    const/4 v5, 0x0

    :goto_11
    if-nez v5, :cond_14

    iget-object v5, v15, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->settings:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_13

    :cond_14
    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    if-eqz v5, :cond_15

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;->HAS_ERASED_VALUE_PARAMETERS:Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$1;

    invoke-interface {v4, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getUserData(Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$1;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v5, v14

    goto :goto_12

    :cond_15
    const/4 v5, 0x0

    :goto_12
    if-eqz v5, :cond_16

    move/from16 v19, v14

    goto :goto_14

    :cond_16
    :goto_13
    const/16 v19, 0x0

    :goto_14
    invoke-interface/range {v20 .. v20}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v5

    const-string v6, "annotationOwnerForMember.valueParameters"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_15
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    if-eqz v13, :cond_17

    iget-object v5, v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;->parametersInfo:Ljava/util/List;

    if-eqz v5, :cond_17

    move-object v6, v7

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    iget v6, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->index:I

    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;

    move-object v11, v5

    goto :goto_16

    :cond_17
    const/4 v11, 0x0

    :goto_16
    new-instance v10, Landroidx/work/JobListenableFuture$1;

    const/16 v5, 0x17

    invoke-direct {v10, v7, v5}, Landroidx/work/JobListenableFuture$1;-><init>(Ljava/lang/Object;I)V

    const/4 v8, 0x0

    if-eqz v7, :cond_18

    move-object v5, v7

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v5

    invoke-static {v15, v5}, Lkotlin/text/UStringsKt;->copyWithNewDefaultTypeQualifiers(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lcom/airbnb/lottie/parser/DropShadowEffect;

    move-result-object v5

    move-object v9, v5

    goto :goto_17

    :cond_18
    move-object v9, v15

    :goto_17
    move-object/from16 v5, p0

    move-object v6, v4

    move-object/from16 v22, v10

    move-object/from16 v10, v16

    move-object v3, v12

    move/from16 v12, v19

    move-object/from16 v23, v13

    move-object/from16 v13, v22

    invoke-virtual/range {v5 .. v13}, Lcom/google/common/base/Splitter$1;->enhance(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;ZLcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v3

    move-object/from16 v13, v23

    const/16 v3, 0xa

    goto :goto_15

    :cond_19
    move-object v3, v12

    move-object/from16 v23, v13

    const/4 v8, 0x1

    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    if-eqz v5, :cond_1a

    move-object v13, v4

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    goto :goto_18

    :cond_1a
    const/4 v13, 0x0

    :goto_18
    if-eqz v13, :cond_1b

    invoke-static {v13}, Lkotlin/ResultKt;->isJavaField(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Z

    move-result v5

    if-ne v5, v14, :cond_1b

    move v5, v14

    goto :goto_19

    :cond_1b
    const/4 v5, 0x0

    :goto_19
    if-eqz v5, :cond_1c

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->FIELD:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    goto :goto_1a

    :cond_1c
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->METHOD_RETURN_TYPE:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    :goto_1a
    move-object v10, v5

    move-object/from16 v13, v23

    if-eqz v13, :cond_1d

    iget-object v5, v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;->returnTypeInfo:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;

    move-object v11, v5

    goto :goto_1b

    :cond_1d
    const/4 v11, 0x0

    :goto_1b
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$returnTypeEnhancement$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$returnTypeEnhancement$1;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object v6, v4

    move-object/from16 v7, v20

    move-object v9, v15

    invoke-virtual/range {v5 .. v13}, Lcom/google/common/base/Splitter$1;->enhance(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;ZLcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    invoke-static {v6}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$containsFunctionN$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$containsFunctionN$1;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result v6

    if-nez v6, :cond_23

    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;

    move-result-object v6

    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    if-eqz v6, :cond_1e

    invoke-static {v6, v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result v6

    goto :goto_1c

    :cond_1e
    const/4 v6, 0x0

    :goto_1c
    if-nez v6, :cond_23

    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v6

    const-string v9, "valueParameters"

    invoke-static {v6, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    instance-of v9, v6, Ljava/util/Collection;

    if-eqz v9, :cond_1f

    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1f

    goto :goto_1d

    :cond_1f
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v9

    const-string v10, "it.type"

    invoke-static {v9, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result v9

    if-eqz v9, :cond_20

    move v6, v14

    goto :goto_1e

    :cond_21
    :goto_1d
    const/4 v6, 0x0

    :goto_1e
    if-eqz v6, :cond_22

    goto :goto_1f

    :cond_22
    const/4 v6, 0x0

    goto :goto_20

    :cond_23
    :goto_1f
    move v6, v14

    :goto_20
    if-eqz v6, :cond_24

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpr;->DEPRECATED_FUNCTION_KEY:Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$1;

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/DeprecationCausedByFunctionNInfo;

    invoke-direct {v7, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/DeprecationCausedByFunctionNInfo;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_21

    :cond_24
    move-object v13, v8

    :goto_21
    if-nez v18, :cond_2a

    if-nez v5, :cond_2a

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_25

    goto :goto_23

    :cond_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v7, :cond_27

    move v7, v14

    goto :goto_22

    :cond_27
    const/4 v7, 0x0

    :goto_22
    if-eqz v7, :cond_26

    goto :goto_24

    :cond_28
    :goto_23
    const/4 v14, 0x0

    :goto_24
    if-nez v14, :cond_2a

    if-eqz v13, :cond_29

    goto :goto_25

    :cond_29
    const/16 v7, 0xa

    goto :goto_28

    :cond_2a
    :goto_25
    if-nez v18, :cond_2c

    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;

    move-result-object v4

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    goto :goto_26

    :cond_2b
    move-object v4, v8

    goto :goto_26

    :cond_2c
    move-object/from16 v4, v18

    :goto_26
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v15, 0x0

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v15, 0x1

    if-ltz v15, :cond_2e

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-nez v9, :cond_2d

    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v9

    const-string v11, "valueParameters[index].type"

    invoke-static {v9, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2d
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v15, v10

    goto :goto_27

    :cond_2e
    invoke-static {}, Lkotlin/jvm/JvmClassMappingKt;->throwIndexOverflow()V

    throw v8

    :cond_2f
    if-nez v5, :cond_30

    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    invoke-static {v5}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    :cond_30
    move-object/from16 v3, p2

    invoke-interface {v3, v4, v6, v5, v13}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;->enhance(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/Pair;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    move-result-object v4

    const-string v3, "null cannot be cast to non-null type D of org.jetbrains.kotlin.load.java.typeEnhancement.SignatureEnhancement.enhanceSignature"

    invoke-static {v4, v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_28
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v7

    goto/16 :goto_0

    :cond_31
    return-object v2
.end method

.method public final getBufferedPositionUs()J
    .locals 10

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, [Landroidx/media3/exoplayer/source/SequenceableLoader;

    array-length v0, p0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    const-wide/high16 v6, -0x8000000000000000L

    if-ge v3, v0, :cond_1

    aget-object v8, p0, v3

    invoke-interface {v8}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-eqz v6, :cond_0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmp-long p0, v4, v1

    if-nez p0, :cond_2

    move-wide v4, v6

    :cond_2
    return-wide v4
.end method

.method public final getNextLoadPositionUs()J
    .locals 10

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, [Landroidx/media3/exoplayer/source/SequenceableLoader;

    array-length v0, p0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    const-wide/high16 v6, -0x8000000000000000L

    if-ge v3, v0, :cond_1

    aget-object v8, p0, v3

    invoke-interface {v8}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-eqz v6, :cond_0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmp-long p0, v4, v1

    if-nez p0, :cond_2

    move-wide v4, v6

    :cond_2
    return-wide v4
.end method

.method public final height()F
    .locals 1

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    check-cast p0, Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public final inset(FF)V
    .locals 2

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    move-object p1, p0

    check-cast p1, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    check-cast p0, Landroid/graphics/RectF;

    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final isLoading()Z
    .locals 4

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, [Landroidx/media3/exoplayer/source/SequenceableLoader;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-interface {v3}, Landroidx/media3/exoplayer/source/SequenceableLoader;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {p1, p2}, Landroidx/core/util/ObjectsCompat$Api19Impl;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object p1, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-object p2
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->checkCloseActionMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public final onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 1

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x6c

    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final perform(Landroid/view/View;)Z
    .locals 2

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    :cond_0
    return v0
.end method

.method public final reevaluateBuffer(J)V
    .locals 3

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, [Landroidx/media3/exoplayer/source/SequenceableLoader;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final registerMcfMlStateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final scale(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    move-object v1, p0

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    move-object v1, p0

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    move-object v1, p0

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    check-cast p0, Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final selectById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;-><init>(Lcom/google/common/base/Splitter$1;JLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, p0}, Lkotlinx/coroutines/DelayKt;->async$default(Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p0

    invoke-virtual {p0, p3}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/common/base/Splitter$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public final width()F
    .locals 0

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    return p0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    check-cast p0, Lcom/google/android/play/core/appupdate/zzk;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzk;->zza:Lcom/google/android/play/core/appupdate/zzi;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzi;->zza:Landroid/content/Context;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/play/core/appupdate/zzc;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/appupdate/zzc;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzh()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zza:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzc(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v2

    if-lt v2, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzc(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    :goto_0
    iget-object v2, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v2

    if-ge v2, v0, :cond_2

    iget-object v2, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    move-object v1, v3

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    :goto_1
    iget-object p1, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zza:[I

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzc:I

    invoke-static {p1, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_3

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzc(I)I

    move-result p1

    iget-object v1, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v1

    if-ge v1, p1, :cond_4

    iget-object p1, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    :cond_6
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Splitter$1;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Splitter$1;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Has a new type of ByteString been created? Found "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
