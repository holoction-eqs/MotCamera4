.class public final Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;
.super Landroid/view/TextureView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;",
        "Landroid/view/TextureView;",
        "1",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mediaPlayer:Landroid/media/MediaPlayer;

.field public prepareStartFuture:Ljava/util/concurrent/CompletableFuture;

.field public final videoSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->prepareStartFuture:Ljava/util/concurrent/CompletableFuture;

    const/16 p1, 0x4b0

    iput p1, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->videoSize:I

    return-void
.end method
