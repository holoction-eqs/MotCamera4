.class public final synthetic Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final instance:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;

    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;-><init>()V

    sput-object v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;->instance:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->TIMESTAMP_ENCODER:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;

    new-instance p0, Lcom/google/gson/JsonParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t find encoder for type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
