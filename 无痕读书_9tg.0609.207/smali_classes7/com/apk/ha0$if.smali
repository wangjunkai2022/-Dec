.class public Lcom/apk/ha0$if;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "EmojiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ha0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field public do:Landroid/content/Context;

.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apk/ha0$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/apk/ha0$if;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    const-string p3, "Catalog"

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p2, "Title"

    .line 2
    invoke-interface {p4, p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/ha0$if;->if:Ljava/lang/String;

    goto :goto_2

    :cond_0
    const-string p3, "Emoticon"

    .line 3
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Tag"

    .line 4
    invoke-interface {p4, p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "File"

    .line 5
    invoke-interface {p4, p1, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p3, p0, Lcom/apk/ha0$if;->do:Landroid/content/Context;

    const-string p4, "."

    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_1
    move-object p4, p1

    .line 9
    :goto_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "drawable"

    :try_start_1
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p4, v2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 10
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_1
    new-instance p3, Lcom/apk/ga0;

    invoke-direct {p3, p2, p1, v0}, Lcom/apk/ga0;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    iget-object p1, p0, Lcom/apk/ha0$if;->if:Ljava/lang/String;

    const-string p2, "emoji"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    sget-object p1, Lcom/apk/ha0;->if:Ljava/util/List;

    .line 14
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object p1, Lcom/apk/ha0;->for:Ljava/util/Map;

    .line 16
    iget-object p2, p3, Lcom/apk/ga0;->do:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/apk/ha0$if;->if:Ljava/lang/String;

    const-string p2, "face"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    sget-object p1, Lcom/apk/ha0;->try:Ljava/util/List;

    .line 19
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object p1, Lcom/apk/ha0;->case:Ljava/util/Map;

    .line 21
    iget-object p2, p3, Lcom/apk/ga0;->do:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    return-void
.end method
