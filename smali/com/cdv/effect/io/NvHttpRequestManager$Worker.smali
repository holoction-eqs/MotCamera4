.class Lcom/cdv/effect/io/NvHttpRequestManager$Worker;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/effect/io/NvHttpRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Worker"
.end annotation


# instance fields
.field public m_working:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/cdv/effect/io/NvHttpRequestManager;


# direct methods
.method public constructor <init>(Lcom/cdv/effect/io/NvHttpRequestManager;)V
    .locals 1

    iput-object p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->m_working:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private ProcessRequest(Lcom/cdv/effect/io/NvHttpRequestManager$Request;)I
    .locals 14

    const-string v0, ""

    const-string v1, "Http Request Manager"

    iget-object v2, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eqz v2, :cond_1

    iget-object p0, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_expired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Ljava/net/URL;

    iget-object v9, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_urlStr:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v7, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_requestMethod:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_requestBody:[B

    if-eqz v7, :cond_3

    iget-object v7, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_requestMethod:Ljava/lang/String;

    const-string v9, "POST"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_requestMethod:Ljava/lang/String;

    const-string v9, "PUT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    invoke-virtual {v8, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    :cond_3
    iget-object v7, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_requestHeaderMap:Ljava/util/Map;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v10, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v7, 0x7530

    invoke-virtual {v8, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v7, 0x2710

    invoke-virtual {v8, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v8}, Ljava/net/URLConnection;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v7, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object p0, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_expired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return v3

    :cond_6
    :try_start_4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    iput v7, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_responseCode:I

    invoke-virtual {v8}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v9, v0

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x3a

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_9
    iget-object v7, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    invoke-static {v7}, Lcom/cdv/effect/io/NvHttpRequestManager;->access$500(Lcom/cdv/effect/io/NvHttpRequestManager;)Landroid/os/Handler;

    move-result-object v7

    new-instance v10, Lcom/cdv/effect/io/NvHttpRequestManager$Worker$2;

    invoke-direct {v10, p0, p1, v9}, Lcom/cdv/effect/io/NvHttpRequestManager$Worker$2;-><init>(Lcom/cdv/effect/io/NvHttpRequestManager$Worker;Lcom/cdv/effect/io/NvHttpRequestManager$Request;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v8}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v8}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iget-object v9, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_requestBody:[B

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write([B)V

    iget-object v7, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object p0, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_expired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_a

    goto :goto_4

    :cond_a
    move v3, v4

    :goto_4
    :try_start_5
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    return v3

    :cond_b
    const/16 v7, 0x1e

    :try_start_6
    invoke-virtual {v8, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/high16 v9, 0x20000

    new-array v10, v9, [B

    move v11, v6

    move v12, v11

    :cond_c
    :goto_5
    iget-object v13, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-eqz v13, :cond_e

    iget-object p0, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_expired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p0, :cond_d

    goto :goto_6

    :cond_d
    move v3, v4

    :goto_6
    :try_start_7
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    return v3

    :cond_e
    sub-int v13, v9, v11

    :try_start_8
    invoke-virtual {v7, v10, v11, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v12
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-gez v12, :cond_10

    if-lez v11, :cond_f

    :try_start_9
    iget-object p0, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    invoke-static {p0, p1, v10, v11}, Lcom/cdv/effect/io/NvHttpRequestManager;->access$700(Lcom/cdv/effect/io/NvHttpRequestManager;Lcom/cdv/effect/io/NvHttpRequestManager$Request;[BI)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_f
    :try_start_a
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :catch_3
    return v6

    :cond_10
    add-int/2addr v11, v12

    if-lt v11, v9, :cond_11

    :try_start_b
    iget-object v12, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    invoke-static {v12, p1, v10, v11}, Lcom/cdv/effect/io/NvHttpRequestManager;->access$700(Lcom/cdv/effect/io/NvHttpRequestManager;Lcom/cdv/effect/io/NvHttpRequestManager$Request;[BI)V

    new-array v10, v9, [B

    move v11, v6

    :cond_11
    move v12, v6

    goto :goto_5

    :catch_4
    add-int/2addr v12, v5

    const/16 v13, 0x14d

    if-le v12, v13, :cond_c

    const-string p0, "Read timeout!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :catch_5
    return v2

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_6
    move-exception p0

    move v6, v5

    goto :goto_8

    :catch_7
    move-exception p0

    goto :goto_9

    :catchall_1
    move-exception p0

    move v5, v6

    :goto_7
    move-object v7, v8

    goto :goto_c

    :catch_8
    move-exception p0

    :goto_8
    move-object v7, v8

    goto :goto_a

    :catch_9
    move-exception p0

    move v5, v6

    :goto_9
    move-object v7, v8

    goto :goto_b

    :catchall_2
    move-exception p0

    move v5, v6

    goto :goto_c

    :catch_a
    move-exception p0

    :goto_a
    :try_start_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v6, :cond_12

    :try_start_e
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    :catch_b
    :cond_12
    return v5

    :catch_c
    move-exception p0

    move v5, v6

    :goto_b
    :try_start_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v5, :cond_13

    :try_start_10
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    :catch_d
    :cond_13
    return v2

    :catchall_3
    move-exception p0

    :goto_c
    if-eqz v5, :cond_14

    :try_start_11
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    :catch_e
    :cond_14
    throw p0
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    invoke-static {v1}, Lcom/cdv/effect/io/NvHttpRequestManager;->access$000(Lcom/cdv/effect/io/NvHttpRequestManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    monitor-exit v0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    invoke-static {v1}, Lcom/cdv/effect/io/NvHttpRequestManager;->access$100(Lcom/cdv/effect/io/NvHttpRequestManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    invoke-static {v1}, Lcom/cdv/effect/io/NvHttpRequestManager;->access$100(Lcom/cdv/effect/io/NvHttpRequestManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->m_working:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v1}, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->ProcessRequest(Lcom/cdv/effect/io/NvHttpRequestManager$Request;)I

    move-result v0

    iget-object v3, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->m_working:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    invoke-static {v2}, Lcom/cdv/effect/io/NvHttpRequestManager;->access$500(Lcom/cdv/effect/io/NvHttpRequestManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/cdv/effect/io/NvHttpRequestManager$Worker$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/cdv/effect/io/NvHttpRequestManager$Worker$1;-><init>(Lcom/cdv/effect/io/NvHttpRequestManager$Worker;Lcom/cdv/effect/io/NvHttpRequestManager$Request;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    const-string v1, "Http Request Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_3
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
