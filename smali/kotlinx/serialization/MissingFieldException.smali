.class public final Lkotlinx/serialization/MissingFieldException;
.super Lkotlinx/serialization/SerializationException;
.source "SourceFile"


# instance fields
.field public final missingFields:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/MissingFieldException;)V
    .locals 1

    const-string v0, "missingFields"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;Lkotlinx/serialization/MissingFieldException;)V

    iput-object p1, p0, Lkotlinx/serialization/MissingFieldException;->missingFields:Ljava/util/List;

    return-void
.end method
