.class public final Lcom/google/common/collect/Sets$2$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final itr:Ljava/util/Iterator;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Sets$2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/Sets$2$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Sets$2$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/Sets$2$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/common/collect/Sets$2$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method
