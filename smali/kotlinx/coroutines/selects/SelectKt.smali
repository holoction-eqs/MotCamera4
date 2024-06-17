.class public abstract Lkotlinx/coroutines/selects/SelectKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_RESULT:Lkotlinx/coroutines/internal/Symbol;

.field public static final STATE_CANCELLED:Lkotlinx/coroutines/internal/Symbol;

.field public static final STATE_COMPLETED:Lkotlinx/coroutines/internal/Symbol;

.field public static final STATE_REG:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "STATE_REG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/selects/SelectKt;->STATE_REG:Lkotlinx/coroutines/internal/Symbol;

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "STATE_COMPLETED"

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/selects/SelectKt;->STATE_COMPLETED:Lkotlinx/coroutines/internal/Symbol;

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "STATE_CANCELLED"

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/selects/SelectKt;->STATE_CANCELLED:Lkotlinx/coroutines/internal/Symbol;

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "NO_RESULT"

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/selects/SelectKt;->NO_RESULT:Lkotlinx/coroutines/internal/Symbol;

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "PARAM_CLAUSE_0"

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    return-void
.end method
