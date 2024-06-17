.class public abstract Lcom/google/android/gms/common/internal/zza;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:I

.field public zza$com$google$android$gms$common$internal$zzc:Ljava/lang/Object;

.field public final zzb:Landroid/os/Bundle;

.field public zzb$com$google$android$gms$common$internal$zzc:Z

.field public final synthetic zzc:Lcom/google/android/gms/common/internal/GmsClient;

.field public final synthetic zzd:Lcom/google/android/gms/common/internal/GmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/GmsClient;ILandroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zza;->zzc:Lcom/google/android/gms/common/internal/GmsClient;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zza;->zzd:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zza;->zza$com$google$android$gms$common$internal$zzc:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zza;->zzb$com$google$android$gms$common$internal$zzc:Z

    iput p2, p0, Lcom/google/android/gms/common/internal/zza;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zza;->zzb:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public abstract zzb(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method public abstract zzd()Z
.end method
