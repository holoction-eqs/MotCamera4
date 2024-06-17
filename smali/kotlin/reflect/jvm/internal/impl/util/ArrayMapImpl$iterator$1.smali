.class public final Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;
.super Lkotlin/collections/AbstractIterator;
.source "SourceFile"


# instance fields
.field public index:I

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->this$0:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;

    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->index:I

    return-void
.end method


# virtual methods
.method public final computeNext()V
    .locals 4

    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->index:I

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->this$0:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    :cond_1
    array-length v3, v2

    if-lt v0, v3, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Lkotlin/collections/AbstractIterator;->state:I

    goto :goto_0

    :cond_2
    aget-object v0, v2, v0

    const-string v2, "null cannot be cast to non-null type T of org.jetbrains.kotlin.util.ArrayMapImpl"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlin/collections/AbstractIterator;->nextValue:Ljava/lang/Object;

    iput v1, p0, Lkotlin/collections/AbstractIterator;->state:I

    :goto_0
    return-void
.end method
