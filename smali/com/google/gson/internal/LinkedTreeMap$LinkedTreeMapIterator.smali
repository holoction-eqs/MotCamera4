.class public abstract Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public expectedModCount:I

.field public lastReturned:Lcom/google/gson/internal/LinkedTreeMap$Node;

.field public next:Lcom/google/gson/internal/LinkedTreeMap$Node;

.field public final synthetic this$0:Lcom/google/gson/internal/LinkedTreeMap;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget p1, p1, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    iput p1, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final nextNode()Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 3

    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v2, v1, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    iget v2, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/google/gson/internal/LinkedTreeMap$Node;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget v0, v2, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
