.class public final Lcom/google/firebase/components/OptionalProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public volatile delegate:Lcom/google/firebase/inject/Provider;

.field public handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lkotlin/UInt$Companion;->instance$1:Lkotlin/UInt$Companion;

    sget-object v1, Lcom/google/firebase/components/OptionalProvider$$Lambda$5;->instance:Lcom/google/firebase/components/OptionalProvider$$Lambda$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    iput-object v1, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
