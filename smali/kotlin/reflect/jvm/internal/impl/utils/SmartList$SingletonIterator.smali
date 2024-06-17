.class public final Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final myInitialModCount:I

.field public myVisited:Z

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->access$100(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->myInitialModCount:I

    return-void
.end method


# virtual methods
.method public final checkCoModification()V
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->access$300(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)I

    move-result v1

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->myInitialModCount:I

    if-ne v1, p0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ConcurrentModificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ModCount: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->access$400(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; expected: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->myVisited:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->next$kotlin$reflect$jvm$internal$impl$utils$SmartList$SingletonIteratorBase()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final next$kotlin$reflect$jvm$internal$impl$utils$SmartList$SingletonIteratorBase()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->myVisited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->myVisited:Z

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->checkCoModification()V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->checkCoModification()V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->clear()V

    return-void
.end method
