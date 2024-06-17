.class public final Lcom/google/firebase/components/RestrictedComponentContainer;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "SourceFile"


# instance fields
.field public final allowedDirectInterfaces:Ljava/util/Set;

.field public final allowedProviderInterfaces:Ljava/util/Set;

.field public final allowedSetDirectInterfaces:Ljava/util/Set;

.field public final allowedSetProviderInterfaces:Ljava/util/Set;

.field public final delegateContainer:Lcom/google/common/collect/ImmutableCollection$Builder;


# direct methods
.method public constructor <init>(Lcom/google/firebase/components/Component;Lcom/google/firebase/components/ComponentRuntime;)V
    .locals 13

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p1, Lcom/google/firebase/components/Component;->dependencies:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/components/Dependency;

    iget v7, v6, Lcom/google/firebase/components/Dependency;->injection:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_0

    move v10, v8

    goto :goto_1

    :cond_0
    move v10, v9

    :goto_1
    const/4 v11, 0x2

    iget v12, v6, Lcom/google/firebase/components/Dependency;->type:I

    iget-object v6, v6, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    if-eqz v10, :cond_3

    if-ne v12, v11, :cond_1

    goto :goto_2

    :cond_1
    move v8, v9

    :goto_2
    if-eqz v8, :cond_2

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-ne v7, v11, :cond_4

    move v7, v8

    goto :goto_3

    :cond_4
    move v7, v9

    :goto_3
    if-eqz v7, :cond_5

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-ne v12, v11, :cond_6

    goto :goto_4

    :cond_6
    move v8, v9

    :goto_4
    if-eqz v8, :cond_7

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    iget-object p1, p1, Lcom/google/firebase/components/Component;->publishedEvents:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    const-class p1, Lcom/google/firebase/events/Publisher;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedDirectInterfaces:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedProviderInterfaces:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedSetDirectInterfaces:Ljava/util/Set;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedSetProviderInterfaces:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Lcom/google/common/collect/ImmutableCollection$Builder;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedDirectInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Lcom/google/common/collect/ImmutableCollection$Builder;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/google/firebase/events/Publisher;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lcom/google/firebase/components/RestrictedComponentContainer$RestrictedPublisher;

    check-cast p0, Lcom/google/firebase/events/Publisher;

    invoke-direct {p1}, Lcom/google/firebase/components/RestrictedComponentContainer$RestrictedPublisher;-><init>()V

    return-object p1

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    const-string v0, "Attempting to request an undeclared dependency %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedProviderInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Lcom/google/common/collect/ImmutableCollection$Builder;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    const-string v0, "Attempting to request an undeclared dependency Provider<%s>."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setOf(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedSetDirectInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Lcom/google/common/collect/ImmutableCollection$Builder;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    const-string v0, "Attempting to request an undeclared dependency Set<%s>."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setOfProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedSetProviderInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Lcom/google/common/collect/ImmutableCollection$Builder;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->setOfProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    const-string v0, "Attempting to request an undeclared dependency Provider<Set<%s>>."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
