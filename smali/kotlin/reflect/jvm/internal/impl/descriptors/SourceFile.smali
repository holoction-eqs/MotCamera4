.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_SOURCE_FILE:Lkotlin/text/Regex$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/text/Regex$Companion;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lkotlin/text/Regex$Companion;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;->NO_SOURCE_FILE:Lkotlin/text/Regex$Companion;

    return-void
.end method
