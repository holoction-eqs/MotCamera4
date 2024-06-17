.class public interface abstract Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ResolutionScope;


# static fields
.field public static final Companion:Lkotlinx/coroutines/CoroutineId$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/CoroutineId$Key;->$$INSTANCE:Lkotlinx/coroutines/CoroutineId$Key;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->Companion:Lkotlinx/coroutines/CoroutineId$Key;

    return-void
.end method


# virtual methods
.method public abstract getClassifierNames()Ljava/util/Set;
.end method

.method public abstract getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;)Ljava/util/Collection;
.end method

.method public abstract getContributedVariables(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;)Ljava/util/Collection;
.end method

.method public abstract getFunctionNames()Ljava/util/Set;
.end method

.method public abstract getVariableNames()Ljava/util/Set;
.end method
