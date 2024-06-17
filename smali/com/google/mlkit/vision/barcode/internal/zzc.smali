.class public final synthetic Lcom/google/mlkit/vision/barcode/internal/zzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/barcode/internal/zzc;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/barcode/internal/zzc;

    invoke-direct {v0}, Lcom/google/mlkit/vision/barcode/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzc;->zza:Lcom/google/mlkit/vision/barcode/internal/zzc;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/google/mlkit/vision/barcode/internal/zzf;

    const-class v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-virtual {p1, v0}, Lcom/google/firebase/components/RestrictedComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {p0, p1}, Lcom/google/mlkit/vision/barcode/internal/zzf;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V

    return-object p0
.end method
