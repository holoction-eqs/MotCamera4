.class public final Lcom/google/photos/vision/barhopper/zze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;


# static fields
.field public static final zza:Lcom/google/photos/vision/barhopper/zze;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/photos/vision/barhopper/zze;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zze;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zze;->zza:Lcom/google/photos/vision/barhopper/zze;

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/photos/vision/barhopper/zzf;->zza(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
