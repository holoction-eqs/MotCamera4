.class public abstract Lkotlinx/coroutines/Dispatchers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

.field public static final IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sput-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget v0, Lkotlinx/coroutines/Unconfined;->$r8$clinit:I

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    sput-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    return-void
.end method
