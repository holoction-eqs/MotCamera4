.class public final Landroidx/fragment/app/FragmentManager$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mEnabled:Z

.field public mEnabledConsumer:Landroidx/core/util/Consumer;

.field public final synthetic this$0:Landroidx/fragment/app/FragmentManagerImpl;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$1;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$1;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager$1;->mEnabled:Z

    return-void
.end method
