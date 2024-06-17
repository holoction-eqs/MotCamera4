.class public final Lcom/google/android/gms/common/internal/MethodInvocation;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/MethodInvocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zaa:I

.field public final zab:I

.field public final zac:I

.field public final zad:J

.field public final zae:J

.field public final zaf:Ljava/lang/String;

.field public final zag:Ljava/lang/String;

.field public final zah:I

.field public final zai:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/zza;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/zza;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/internal/MethodInvocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zaa:I

    iput p2, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zab:I

    iput p3, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zac:I

    iput-wide p4, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zad:J

    iput-wide p6, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zae:J

    iput-object p8, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zaf:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zag:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zah:I

    iput p11, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zai:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p2, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zaa:I

    invoke-static {p1, v0, v1}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zab:I

    invoke-static {p1, v0, v1}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zac:I

    invoke-static {p1, v0, v1}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zad:J

    invoke-static {p1, v0, v1, v2}, Landroidx/media3/common/Format$1;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zae:J

    invoke-static {p1, v0, v1, v2}, Landroidx/media3/common/Format$1;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zaf:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroidx/media3/common/Format$1;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zag:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroidx/media3/common/Format$1;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zah:I

    invoke-static {p1, v0, v1}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/16 v0, 0x9

    iget p0, p0, Lcom/google/android/gms/common/internal/MethodInvocation;->zai:I

    invoke-static {p1, v0, p0}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    invoke-static {p2, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
