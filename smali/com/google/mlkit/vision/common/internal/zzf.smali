.class public final synthetic Lcom/google/mlkit/vision/common/internal/zzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/common/internal/zzf;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/common/internal/zzf;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/zzf;->zza:Lcom/google/mlkit/vision/common/internal/zzf;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 0

    const-class p0, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$Registration;

    invoke-virtual {p1, p0}, Lcom/google/firebase/components/RestrictedComponentContainer;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    new-instance p1, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    invoke-direct {p1, p0}, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
