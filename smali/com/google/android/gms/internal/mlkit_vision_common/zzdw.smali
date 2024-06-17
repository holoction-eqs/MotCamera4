.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzdw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdw;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzdw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdw;

    new-instance v0, Lcom/adobe/xmp/impl/ParseState;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzad;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzai;

    invoke-static {v1, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzad;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    const/4 p0, 0x0

    throw p0
.end method
