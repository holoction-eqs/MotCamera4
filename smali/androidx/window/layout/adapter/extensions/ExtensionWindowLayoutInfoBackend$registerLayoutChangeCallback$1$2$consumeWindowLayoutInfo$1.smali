.class public final Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$consumeWindowLayoutInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $consumer:Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;


# direct methods
.method public constructor <init>(Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$consumeWindowLayoutInfo$1;->$consumer:Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/window/extensions/layout/WindowLayoutInfo;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$consumeWindowLayoutInfo$1;->$consumer:Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;

    invoke-virtual {p0, p1}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
