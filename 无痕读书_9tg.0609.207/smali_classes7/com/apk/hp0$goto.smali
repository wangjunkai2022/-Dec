.class public final Lcom/apk/hp0$goto;
.super Lcom/apk/hp0;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/hp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "goto"
.end annotation


# instance fields
.field public do:Ljava/lang/String;

.field public if:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/hp0;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/apk/sb0;->protected(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/hp0$goto;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/apk/hp0$goto;->if:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/jo0;Lcom/apk/jo0;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/hp0$goto;->do:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/apk/no0;->while(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apk/hp0$goto;->if:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcom/apk/hp0$goto;->do:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/apk/no0;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/apk/hp0$goto;->do:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/apk/hp0$goto;->if:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[%s~=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
