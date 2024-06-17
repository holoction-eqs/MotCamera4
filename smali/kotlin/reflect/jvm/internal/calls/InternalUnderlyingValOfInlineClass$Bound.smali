.class public final Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Bound;
.super Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/calls/BoundCaller;


# instance fields
.field public final boundReceiver:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Bound;->boundReceiver:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->checkArguments(Lkotlin/reflect/jvm/internal/calls/Caller;[Ljava/lang/Object;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass;->unboxMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Bound;->boundReceiver:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
