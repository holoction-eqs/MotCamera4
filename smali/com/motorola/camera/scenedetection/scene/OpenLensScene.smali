.class public final Lcom/motorola/camera/scenedetection/scene/OpenLensScene;
.super Lcom/motorola/camera/scenedetection/scene/ActionScene;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v1, "optType"

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    const v1, 0x7f120030

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/camera/scenedetection/scene/ActionScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;II)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/scenedetection/scene/OpenLensScene;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final doAction(Lcom/motorola/camera/EventListener;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Lkotlin/UShort$Companion;->getInstance()Lcom/motorola/camera/utility/lens/LensApiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/OpenLensScene;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v1, 0x12

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
