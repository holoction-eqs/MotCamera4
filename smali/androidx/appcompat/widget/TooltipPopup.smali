.class public final Landroidx/appcompat/widget/TooltipPopup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# instance fields
.field public mContentView:Ljava/lang/Object;

.field public mContext:Ljava/lang/Object;

.field public mLayoutParams:Ljava/lang/Object;

.field public mMessageView:Ljava/lang/Object;

.field public mTmpAnchorPos:Ljava/lang/Object;

.field public mTmpAppPos:Ljava/lang/Object;

.field public mTmpDisplayFrame:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$2;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$2;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$2;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$4;

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$4;

    invoke-direct {v0, p1, v2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$4;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/appupdate/zzi;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/play/core/appupdate/zzk;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/appupdate/zzk;-><init>(Lcom/google/android/play/core/appupdate/zzi;)V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

    new-instance p1, Landroidx/appcompat/widget/Toolbar$1;

    invoke-direct {p1, v0}, Landroidx/appcompat/widget/Toolbar$1;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    new-instance v1, Landroidx/work/impl/StartStopTokens;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0, p1}, Landroidx/work/impl/StartStopTokens;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/play/core/appupdate/internal/zzaf;

    new-instance v0, Lcom/google/common/base/Splitter$1;

    const/16 v1, 0xe

    invoke-direct {v0, p1, v1}, Lcom/google/common/base/Splitter$1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/play/core/appupdate/internal/zzaf;

    new-instance v3, Lcom/motorola/camera/fsm/ChangeEvent;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0, p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:Ljava/lang/Object;

    new-instance v0, Lcom/google/gson/FieldAttributes;

    invoke-direct {v0, p1, v1}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;->INSTANCE:Landroidx/work/InputMergerFactory$1;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/time/Clock;

    .line 1
    new-instance p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;-><init>()V

    return-object p0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipPopup;->get()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    move-result-object p0

    return-object p0
.end method

.method public final insert(Lcom/motorola/camera/background/provider/filedatacontract/FileData;)J
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

    check-cast v0, Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p1
.end method
