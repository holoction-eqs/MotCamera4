.class Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$LocationTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result p0

    const/16 v0, 0x9

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v8, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "loc_prov"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "loc_long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "loc_lat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "loc_alt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v6

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v4

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v2

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    new-instance p0, Landroid/location/Location;

    invoke-direct {p0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    invoke-virtual {p0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {p0, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    move-object v1, p0

    :goto_2
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x142aac2a -> :sswitch_3
        0x142ad420 -> :sswitch_2
        0x712fe41b -> :sswitch_1
        0x7131c108 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Landroid/location/Location;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    const-string p0, "loc_prov"

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object p0

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string p0, "loc_alt"

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object p0

    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(D)V

    const-string p0, "loc_lat"

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object p0

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(D)V

    const-string p0, "loc_long"

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object p0

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(D)V

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    :goto_0
    return-void
.end method
