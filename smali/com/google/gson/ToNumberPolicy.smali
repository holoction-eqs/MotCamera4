.class public abstract enum Lcom/google/gson/ToNumberPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/ToNumberStrategy;


# static fields
.field public static final synthetic $VALUES:[Lcom/google/gson/ToNumberPolicy;

.field public static final enum DOUBLE:Lcom/google/gson/ToNumberPolicy$1;

.field public static final enum LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/gson/ToNumberPolicy$1;

    invoke-direct {v0}, Lcom/google/gson/ToNumberPolicy$1;-><init>()V

    sput-object v0, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy$1;

    new-instance v1, Lcom/google/gson/ToNumberPolicy$2;

    invoke-direct {v1}, Lcom/google/gson/ToNumberPolicy$2;-><init>()V

    sput-object v1, Lcom/google/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy$2;

    new-instance v2, Lcom/google/gson/ToNumberPolicy$3;

    invoke-direct {v2}, Lcom/google/gson/ToNumberPolicy$3;-><init>()V

    new-instance v3, Lcom/google/gson/ToNumberPolicy$4;

    invoke-direct {v3}, Lcom/google/gson/ToNumberPolicy$4;-><init>()V

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/gson/ToNumberPolicy;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Lcom/google/gson/ToNumberPolicy;->$VALUES:[Lcom/google/gson/ToNumberPolicy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/ToNumberPolicy;
    .locals 1

    const-class v0, Lcom/google/gson/ToNumberPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/gson/ToNumberPolicy;

    return-object p0
.end method

.method public static values()[Lcom/google/gson/ToNumberPolicy;
    .locals 1

    sget-object v0, Lcom/google/gson/ToNumberPolicy;->$VALUES:[Lcom/google/gson/ToNumberPolicy;

    invoke-virtual {v0}, [Lcom/google/gson/ToNumberPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/ToNumberPolicy;

    return-object v0
.end method
