.class public final Lcom/google/firebase/components/CycleDetector$ComponentNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final component:Lcom/google/firebase/components/Component;

.field public final dependencies:Ljava/util/HashSet;

.field public final dependents:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/google/firebase/components/Component;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/CycleDetector$ComponentNode;->dependencies:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/CycleDetector$ComponentNode;->dependents:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/google/firebase/components/CycleDetector$ComponentNode;->component:Lcom/google/firebase/components/Component;

    return-void
.end method
