.class public final Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sDiffExecutor:Ljava/util/concurrent/ExecutorService;

.field public static final sExecutorLock:Ljava/lang/Object;


# instance fields
.field public mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
