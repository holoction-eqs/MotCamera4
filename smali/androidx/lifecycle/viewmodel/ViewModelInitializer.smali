.class public final Landroidx/lifecycle/viewmodel/ViewModelInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final clazz:Ljava/lang/Class;

.field public final initializer:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$1:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/viewmodel/ViewModelInitializer;->clazz:Ljava/lang/Class;

    iput-object v0, p0, Landroidx/lifecycle/viewmodel/ViewModelInitializer;->initializer:Lkotlin/jvm/functions/Function1;

    return-void
.end method
