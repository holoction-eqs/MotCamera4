.class public final Lkotlinx/serialization/json/internal/JsonDecodingException;
.super Lkotlinx/serialization/UnknownFieldException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "message"

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/UnknownFieldException;-><init>(Ljava/lang/String;I)V

    return-void

    :cond_0
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/UnknownFieldException;-><init>(Ljava/lang/String;I)V

    return-void
.end method
