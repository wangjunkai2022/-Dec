.class public interface abstract Lcom/apk/km$if;
.super Ljava/lang/Object;
.source "GlideExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/km;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "if"
.end annotation


# static fields
.field public static final do:Lcom/apk/km$if;

.field public static final if:Lcom/apk/km$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/km$if$do;

    invoke-direct {v0}, Lcom/apk/km$if$do;-><init>()V

    sput-object v0, Lcom/apk/km$if;->do:Lcom/apk/km$if;

    .line 2
    sget-object v0, Lcom/apk/km$if;->do:Lcom/apk/km$if;

    sput-object v0, Lcom/apk/km$if;->if:Lcom/apk/km$if;

    return-void
.end method


# virtual methods
.method public abstract do(Ljava/lang/Throwable;)V
.end method
