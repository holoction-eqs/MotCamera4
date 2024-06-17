.class public abstract Lcom/motorola/camera/background/common/ServiceBase;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public TAG:Ljava/lang/String;

.field public mAllowRebind:Z

.field public mBinding:Landroid/os/IBinder;

.field public mStartMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-class v0, Lcom/motorola/camera/background/common/ServiceBase;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mStartMode:I

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    iget p0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mStartMode:I

    return p0
.end method
