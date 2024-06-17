.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/common/sdkinternal/zzs;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zzs;

    invoke-direct {v0}, Lcom/google/mlkit/common/sdkinternal/zzs;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/zzs;->zza:Lcom/google/mlkit/common/sdkinternal/zzs;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/firebase/components/RestrictedComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
