.class public final Lcom/apk/yo0$try;
.super Lcom/apk/yo0;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/yo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "try"
.end annotation


# instance fields
.field public case:Z

.field public for:Ljava/lang/String;

.field public final if:Ljava/lang/StringBuilder;

.field public final new:Ljava/lang/StringBuilder;

.field public final try:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/apk/yo0;-><init>(Lcom/apk/yo0$do;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/apk/yo0$try;->if:Ljava/lang/StringBuilder;

    .line 3
    iput-object v0, p0, Lcom/apk/yo0$try;->for:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/apk/yo0$try;->new:Ljava/lang/StringBuilder;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/apk/yo0$try;->try:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/apk/yo0$try;->case:Z

    .line 7
    sget-object v0, Lcom/apk/yo0$break;->do:Lcom/apk/yo0$break;

    iput-object v0, p0, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    return-void
.end method


# virtual methods
.method public else()Lcom/apk/yo0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/yo0$try;->if:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/apk/yo0;->goto(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/yo0$try;->for:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/apk/yo0$try;->new:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/apk/yo0;->goto(Ljava/lang/StringBuilder;)V

    .line 4
    iget-object v0, p0, Lcom/apk/yo0$try;->try:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/apk/yo0;->goto(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/apk/yo0$try;->case:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "<!doctype "

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/apk/yo0$try;->if:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
