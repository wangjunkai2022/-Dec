.class public Lcom/apk/la0;
.super Ljava/lang/Object;
.source "MoonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/la0$for;,
        Lcom/apk/la0$if;,
        Lcom/apk/la0$do;
    }
.end annotation


# static fields
.field public static final do:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "<a.*?>.*?</a>"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apk/la0;->do:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static do(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/ha0;->for:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/ga0;

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p1, Lcom/apk/ga0;->do:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/apk/ha0;->new:Landroid/util/LruCache;

    iget-object v1, p1, Lcom/apk/ga0;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p1, p1, Lcom/apk/ga0;->for:I

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/high16 v0, 0x420c0000    # 35.0f

    .line 5
    invoke-static {v0}, Lcom/apk/k40;->super(F)I

    move-result v0

    const/4 v1, 0x1

    .line 6
    invoke-static {p1, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7
    :cond_1
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p2

    float-to-int p0, p0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0, v0, p0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    return-object p1
.end method

.method public static for(Ljava/lang/String;Lcom/tr/comment/sdk/bean/TrCommentBean;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, " //@"

    invoke-static {v1, v0}, Lcom/apk/la0;->new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, v1}, Lcom/apk/goto;->while(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff1a"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static if(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, ""

    .line 3
    :cond_0
    sget-object v1, Lcom/apk/la0;->do:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 6
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 7
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "href"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const-string v5, "\""

    .line 9
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v8, v7, 0x1

    .line 10
    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-le v5, v7, :cond_1

    .line 11
    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    const-string v7, ">"

    .line 12
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, "<"

    .line 13
    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-le v8, v7, :cond_2

    add-int/lit8 v7, v7, 0x1

    .line 14
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 15
    :cond_2
    new-instance v4, Lcom/apk/la0$do;

    invoke-direct {v4, v6, v5}, Lcom/apk/la0$do;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v3, v4, Lcom/apk/la0$do;->new:Ljava/lang/String;

    .line 18
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object v1, v4, Lcom/apk/la0$do;->new:Ljava/lang/String;

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    .line 21
    iput v2, v4, Lcom/apk/la0$do;->do:I

    .line 22
    iput v1, v4, Lcom/apk/la0$do;->if:I

    .line 23
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v1, Lcom/apk/la0;->do:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    goto :goto_0

    .line 25
    :cond_3
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 26
    sget-object v2, Lcom/apk/ha0;->do:Ljava/util/regex/Pattern;

    .line 27
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 28
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/16 v5, 0x21

    if-eqz v4, :cond_5

    .line 29
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 30
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    .line 31
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const v8, 0x3f19999a    # 0.6f

    .line 32
    invoke-static {p0, v7, v8}, Lcom/apk/la0;->do(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 33
    new-instance v8, Lcom/apk/la0$if;

    invoke-direct {v8, v7, v3}, Lcom/apk/la0$if;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 34
    invoke-virtual {v1, v8, v4, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 35
    :cond_5
    sget-object p0, Lcom/apk/ha0;->else:Ljava/util/regex/Pattern;

    .line 36
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 37
    :goto_3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 38
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    .line 39
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 40
    new-instance v3, Lcom/apk/la0$for;

    invoke-direct {v3}, Lcom/apk/la0$for;-><init>()V

    .line 41
    invoke-virtual {v1, v3, p1, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 42
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/la0$do;

    .line 43
    iget v0, p1, Lcom/apk/la0$do;->do:I

    .line 44
    iget v2, p1, Lcom/apk/la0$do;->if:I

    .line 45
    invoke-virtual {v1, p1, v0, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_7
    return-object v1
.end method

.method public static new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static try(Landroid/content/Context;Landroid/text/Editable;II)V
    .locals 5

    if-lez p3, :cond_2

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/2addr p3, p2

    if-ge v0, p3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    .line 3
    sget-object v0, Lcom/apk/ha0;->do:Ljava/util/regex/Pattern;

    .line 4
    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    add-int/2addr v0, p2

    .line 7
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    add-int/2addr v1, p2

    .line 8
    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x3f19999a    # 0.6f

    .line 9
    invoke-static {p0, v2, v3}, Lcom/apk/la0;->do(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    new-instance v3, Lcom/apk/la0$if;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/apk/la0$if;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v2, 0x21

    .line 11
    invoke-interface {p1, v3, v0, v1, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
