.class public final Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;
.super Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap$KeySet;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->$r8$classId:I

    .line 1
    iget-object p1, p1, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap$KeySet;I)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->$r8$classId:I

    .line 2
    iget-object p1, p1, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->nextNode()Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object p0

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->nextNode()Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
