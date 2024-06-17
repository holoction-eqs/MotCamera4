.class public final Landroidx/window/layout/WindowInfoTracker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $$INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion;

.field public static final decorator:Lkotlin/UNINITIALIZED_VALUE;

.field public static final extensionBackend$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/WindowInfoTracker$Companion;

    invoke-direct {v0}, Landroidx/window/layout/WindowInfoTracker$Companion;-><init>()V

    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->$$INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion;

    const-class v0, Landroidx/window/layout/WindowInfoTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->INSTANCE$1:Lcom/motorola/camera/utility/ForegroundRunner$handler$2;

    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/window/layout/WindowInfoTracker$Companion;->extensionBackend$delegate:Lkotlin/SynchronizedLazyImpl;

    sget-object v0, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE$2:Lkotlin/UNINITIALIZED_VALUE;

    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->decorator:Lkotlin/UNINITIALIZED_VALUE;

    return-void
.end method
