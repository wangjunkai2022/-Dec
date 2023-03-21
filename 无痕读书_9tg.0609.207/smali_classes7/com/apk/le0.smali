.class public final Lcom/apk/le0;
.super Lcom/apk/od0;
.source "Strings.kt"

# interfaces
.implements Lcom/apk/id0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/od0;",
        "Lcom/apk/id0<",
        "Lcom/apk/xd0;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/apk/le0;->do:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/apk/od0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/apk/xd0;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/apk/le0;->do:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/apk/ie0;->switch(Ljava/lang/CharSequence;Lcom/apk/xd0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
