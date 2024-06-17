.class public final Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lkotlin/UInt$Companion;

.field public static volatile INSTANCE:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;


# instance fields
.field public final mCallbackList:Ljava/util/ArrayList;

.field public onBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/UInt$Companion;

    invoke-direct {v0}, Lkotlin/UInt$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lkotlin/UInt$Companion;

    const-class v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->mCallbackList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final registerCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V
    .locals 1

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->onBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    if-nez p2, :cond_1

    new-instance p2, Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->onBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->onBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_2

    invoke-static {p1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_2
    return-void
.end method

.method public final unRegisterCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V
    .locals 2

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->mCallbackList:Ljava/util/ArrayList;

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lkotlin/jvm/internal/markers/KMutableCollection;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "kotlin.collections.MutableCollection"

    invoke-static {v0, p0}, Lkotlin/LazyKt__LazyKt;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->onBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_3

    invoke-static {p1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m(Landroid/window/OnBackInvokedDispatcher;Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;)V

    :cond_3
    return-void
.end method
