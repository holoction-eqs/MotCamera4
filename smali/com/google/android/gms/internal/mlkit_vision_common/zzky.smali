.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzky;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public zza:Ljava/lang/Object;

.field public zzb:Ljava/lang/Object;

.field public zzc:Ljava/lang/Object;

.field public zzd:Ljava/lang/Object;

.field public zze:Ljava/lang/Object;

.field public zzf:Ljava/lang/Object;

.field public zzg:Ljava/lang/Object;

.field public zzh:Ljava/lang/Object;

.field public zzi:Ljava/lang/Object;

.field public zzj:Ljava/lang/Object;

.field public zzk:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p1, v1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzb:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$2;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzc:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$2;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$2;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzd:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzf:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zze:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzg:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzh:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzi:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzj:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;

    invoke-direct {v0, p1, v2}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzk:Ljava/lang/Object;

    return-void
.end method
