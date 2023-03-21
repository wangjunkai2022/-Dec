.class public Lcom/apk/ho0;
.super Lcom/apk/jo0;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ho0$do;,
        Lcom/apk/ho0$if;
    }
.end annotation


# static fields
.field public static final const:Lcom/apk/hp0;


# instance fields
.field public break:Lcom/apk/ho0$do;

.field public catch:Lcom/apk/wo0;

.field public class:Lcom/apk/ho0$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/hp0$transient;

    const-string v1, "title"

    invoke-direct {v0, v1}, Lcom/apk/hp0$transient;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/apk/ho0;->const:Lcom/apk/hp0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/vo0;->for:Lcom/apk/vo0;

    const-string v1, "#root"

    invoke-static {v1, v0}, Lcom/apk/xo0;->do(Ljava/lang/String;Lcom/apk/vo0;)Lcom/apk/xo0;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v1}, Lcom/apk/jo0;-><init>(Lcom/apk/xo0;Ljava/lang/String;Lcom/apk/do0;)V

    .line 3
    new-instance p1, Lcom/apk/ho0$do;

    invoke-direct {p1}, Lcom/apk/ho0$do;-><init>()V

    iput-object p1, p0, Lcom/apk/ho0;->break:Lcom/apk/ho0$do;

    .line 4
    sget-object p1, Lcom/apk/ho0$if;->do:Lcom/apk/ho0$if;

    iput-object p1, p0, Lcom/apk/ho0;->class:Lcom/apk/ho0$if;

    .line 5
    new-instance p1, Lcom/apk/wo0;

    new-instance v0, Lcom/apk/ro0;

    invoke-direct {v0}, Lcom/apk/ro0;-><init>()V

    invoke-direct {p1, v0}, Lcom/apk/wo0;-><init>(Lcom/apk/cp0;)V

    .line 6
    iput-object p1, p0, Lcom/apk/ho0;->catch:Lcom/apk/wo0;

    return-void
.end method


# virtual methods
.method public bridge synthetic class()Lcom/apk/no0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/ho0;->f()Lcom/apk/ho0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/ho0;->f()Lcom/apk/ho0;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/apk/ho0;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/jo0;->interface()Lcom/apk/jo0;

    move-result-object v0

    check-cast v0, Lcom/apk/ho0;

    .line 2
    iget-object v1, p0, Lcom/apk/ho0;->break:Lcom/apk/ho0$do;

    invoke-virtual {v1}, Lcom/apk/ho0$do;->do()Lcom/apk/ho0$do;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/ho0;->break:Lcom/apk/ho0$do;

    return-object v0
.end method

.method public bridge synthetic interface()Lcom/apk/jo0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/ho0;->f()Lcom/apk/ho0;

    move-result-object v0

    return-object v0
.end method

.method public return()Ljava/lang/String;
    .locals 1

    const-string v0, "#document"

    return-object v0
.end method

.method public static()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/jo0;->implements()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
