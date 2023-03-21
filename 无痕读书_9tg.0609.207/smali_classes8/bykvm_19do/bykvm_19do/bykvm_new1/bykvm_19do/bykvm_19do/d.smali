.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d;
.super Ljava/lang/Object;
.source "ANRThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;

.field public volatile b:Z

.field public c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d;->b:Z

    .line 3
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d$a;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d;)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d;->c:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;

    .line 5
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d;->a()J

    const-wide/16 v0, 0x2

    .line 6
    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/g;->a(J)V

    .line 7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;->e()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;

    move-result-object p1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1194

    invoke-virtual {p1, v1, v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;->a(JLjava/lang/Runnable;)V

    .line 8
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;->e()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;

    move-result-object v3

    const-wide/16 v4, 0x1388

    const/16 v7, 0x28

    const-wide/16 v8, 0x1388

    move-object v6, p0

    invoke-virtual/range {v3 .. v9}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;->a(JLjava/lang/Runnable;IJ)V

    return-void
.end method

.method private a()J
    .locals 2

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr/traces.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d;->b:Z

    return p1
.end method

.method private b()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr/traces.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc8

    const-string v1, "/data/anr/traces.txt"

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    move-object v1, v0

    const/16 v0, 0x64

    .line 3
    :goto_0
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;

    const/16 v3, 0x19

    invoke-virtual {v2, v0, v1, v3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;->a(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/d;->b:Z

    :cond_1
    return-void
.end method
