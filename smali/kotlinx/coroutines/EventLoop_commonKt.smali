.class public abstract Lkotlinx/coroutines/EventLoop_commonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;

.field public static final DISPOSED_TASK:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "REMOVED_TASK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/EventLoop_commonKt;->DISPOSED_TASK:Lkotlinx/coroutines/internal/Symbol;

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method
