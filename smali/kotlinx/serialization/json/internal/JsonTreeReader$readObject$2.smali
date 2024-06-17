.class public final Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public L$0:Lkotlin/DeepRecursiveScopeImpl;

.field public L$1:Lkotlinx/serialization/json/internal/JsonTreeReader;

.field public L$2:Ljava/util/LinkedHashMap;

.field public L$3:Ljava/lang/String;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lkotlinx/serialization/json/internal/JsonTreeReader;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->this$0:Lkotlinx/serialization/json/internal/JsonTreeReader;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->result:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->this$0:Lkotlinx/serialization/json/internal/JsonTreeReader;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->access$readObject(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/DeepRecursiveScopeImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
