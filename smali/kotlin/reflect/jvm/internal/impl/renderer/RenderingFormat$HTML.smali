.class public final Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat$HTML;
.super Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "HTML"

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "string"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "<"

    const-string v0, "&lt;"

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt__StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ">"

    const-string v0, "&gt;"

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt__StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
