.class public abstract Lcom/google/gson/internal/sql/SqlTypesSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATE_DATE_TYPE:Lcom/google/gson/internal/sql/SqlTypesSupport$1;

.field public static final DATE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final SUPPORTS_SQL_TYPES:Z

.field public static final TIMESTAMP_DATE_TYPE:Lcom/google/gson/internal/sql/SqlTypesSupport$1;

.field public static final TIMESTAMP_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final TIME_FACTORY:Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "java.sql.Date"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    goto :goto_0

    :catch_0
    move v2, v1

    :goto_0
    sput-boolean v2, Lcom/google/gson/internal/sql/SqlTypesSupport;->SUPPORTS_SQL_TYPES:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/gson/internal/sql/SqlTypesSupport$1;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v2, v1, v3}, Lcom/google/gson/internal/sql/SqlTypesSupport$1;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_DATE_TYPE:Lcom/google/gson/internal/sql/SqlTypesSupport$1;

    new-instance v1, Lcom/google/gson/internal/sql/SqlTypesSupport$1;

    const-class v2, Ljava/sql/Timestamp;

    invoke-direct {v1, v0, v2}, Lcom/google/gson/internal/sql/SqlTypesSupport$1;-><init>(ILjava/lang/Class;)V

    sput-object v1, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_DATE_TYPE:Lcom/google/gson/internal/sql/SqlTypesSupport$1;

    sget-object v0, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    sget-object v0, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIME_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    sget-object v0, Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_DATE_TYPE:Lcom/google/gson/internal/sql/SqlTypesSupport$1;

    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_DATE_TYPE:Lcom/google/gson/internal/sql/SqlTypesSupport$1;

    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIME_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    :goto_1
    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method
