.class public final Lcom/google/common/collect/CompactHashMap$1;
.super Lcom/google/common/collect/CompactHashMap$Itr;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/CompactHashMap;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/CompactHashMap$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$1;->this$0:Lcom/google/common/collect/CompactHashMap;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap$Itr;-><init>(Lcom/google/common/collect/CompactHashMap;I)V

    return-void
.end method


# virtual methods
.method public final getOutput(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$1;->$r8$classId:I

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$1;->this$0:Lcom/google/common/collect/CompactHashMap;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/google/common/collect/CompactHashMap$MapEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CompactHashMap$MapEntry;-><init>(Lcom/google/common/collect/CompactHashMap;I)V

    return-object v0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
