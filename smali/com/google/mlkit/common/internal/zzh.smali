.class public final synthetic Lcom/google/mlkit/common/internal/zzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/Transformer;
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/common/internal/zzh;

.field public static final synthetic zza$1:Lcom/google/mlkit/common/internal/zzh;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/internal/zzh;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zzh;->zza$1:Lcom/google/mlkit/common/internal/zzh;

    new-instance v0, Lcom/google/mlkit/common/internal/zzh;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zzh;->zza:Lcom/google/mlkit/common/internal/zzh;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    return-object p1
.end method

.method public create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;

    const-class v0, Landroidx/work/impl/StartStopTokens;

    invoke-virtual {p1, v0}, Lcom/google/firebase/components/RestrictedComponentContainer;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;-><init>(Lcom/google/firebase/inject/Provider;)V

    return-object p0
.end method
