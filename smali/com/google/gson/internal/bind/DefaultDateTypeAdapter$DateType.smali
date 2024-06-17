.class public abstract Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType$1;


# instance fields
.field public final dateClass:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType$1;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->DATE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType$1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->dateClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final createAdapterFactory(II)Lcom/google/gson/TypeAdapterFactory;
    .locals 1

    new-instance v0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;-><init>(Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;II)V

    sget-object p1, Lcom/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    new-instance p1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    iget-object p0, p0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->dateClass:Ljava/lang/Class;

    invoke-direct {p1, p0, v0}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    return-object p1
.end method

.method public abstract deserialize(Ljava/util/Date;)Ljava/util/Date;
.end method
